; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votrax.c_Votrax_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votrax.c_Votrax_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [35 x i8] c"Votrax SC-01: %s at intonation %d\0A\00", align 1
@PhonemeNames = common dso_local global i32* null, align 8
@votraxsc01_locals = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Votrax_PutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 63
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 6
  %9 = and i32 %8, 3
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** @PhonemeNames, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @LOG(i8* %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @PrepareVoiceData(i32 %19, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 0), align 8
  %23 = icmp eq i32 %22, 63
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @time_to_samples(i32 20)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 4), align 8
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 1), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 1), align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 3), align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 3), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 1), align 4
  %39 = call i32 %37(i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 0), align 8
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @votraxsc01_locals, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @PrepareVoiceData(i32, i32) #1

declare dso_local i32 @time_to_samples(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
