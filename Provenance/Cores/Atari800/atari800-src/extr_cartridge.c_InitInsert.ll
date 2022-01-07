; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_InitInsert.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_InitInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@CARTRIDGE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error inserting cartridge \22%s\22: %s\00", align 1
@CARTRIDGE_CANT_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Can't open file\00", align 1
@CARTRIDGE_BAD_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Bad format\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Bad checksum\00", align 1
@CARTRIDGE_UNKNOWN = common dso_local global i32 0, align 4
@CARTRIDGE_kb = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @InitInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitInsert(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CARTRIDGE_NONE, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %60

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = call i32 @InsertCartridge(i32 %16, %struct.TYPE_5__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %10
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CARTRIDGE_CANT_OPEN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %35

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CARTRIDGE_BAD_FORMAT, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  br label %35

35:                                               ; preds = %29, %28
  %36 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %34, %29 ]
  %37 = call i32 @Log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %36)
  %38 = load i32, i32* @CARTRIDGE_NONE, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %10
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CARTRIDGE_UNKNOWN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32*, i32** @CARTRIDGE_kb, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @CARTRIDGE_SetType(%struct.TYPE_5__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %47, %41
  br label %60

60:                                               ; preds = %59, %1
  ret void
}

declare dso_local i32 @InsertCartridge(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @Log_print(i8*, i32, i8*) #1

declare dso_local i32 @CARTRIDGE_SetType(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
