; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadVisibility.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_load.c_CMod_LoadVisibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@cm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@h_high = common dso_local global i32 0, align 4
@cmod_base = common dso_local global i32* null, align 8
@qtrue = common dso_local global i32 0, align 4
@VIS_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CMod_LoadVisibility(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 1), align 4
  %12 = add nsw i32 %11, 31
  %13 = and i32 %12, -32
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 0), align 8
  %15 = load i32, i32* @h_high, align 4
  %16 = call i8* @Hunk_Alloc(i32 %14, i32 %15)
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 2), align 8
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 2), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 0), align 8
  %19 = call i32 @Com_Memset(i8* %17, i32 255, i32 %18)
  br label %50

20:                                               ; preds = %1
  %21 = load i32*, i32** @cmod_base, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* @qtrue, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 3), align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @h_high, align 4
  %30 = call i8* @Hunk_Alloc(i32 %28, i32 %29)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 2), align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @LittleLong(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 1), align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @LittleLong(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 0), align 8
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cm, i32 0, i32 2), align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @VIS_HEADER, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @VIS_HEADER, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @Com_Memcpy(i8* %41, i32* %45, i32 %48)
  br label %50

50:                                               ; preds = %20, %10
  ret void
}

declare dso_local i8* @Hunk_Alloc(i32, i32) #1

declare dso_local i32 @Com_Memset(i8*, i32, i32) #1

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @Com_Memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
