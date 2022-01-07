; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_file.c_AAS_LoadAASLump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_file.c_AAS_LoadAASLump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32, i32)*, i32 (i32)*, i64 (i32, i32, i32)*, i32 (i32, i8*)* }

@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AAS file not sequentially read\0A\00", align 1
@FS_SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't seek to aas lump\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AAS_LoadAASLump(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i64 @GetClearedHunkMemory(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  br label %61

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 3), align 8
  %27 = load i32, i32* @PRT_WARNING, align 4
  %28 = call i32 %26(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 2), align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @FS_SEEK_SET, align 4
  %33 = call i64 %29(i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = call i32 @AAS_Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 (...) @AAS_DumpAASData()
  %38 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 1), align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 %38(i32 %39)
  store i8* null, i8** %6, align 8
  br label %61

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i64 @GetClearedHunkMemory(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %12, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 %50(i8* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %49, %42
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %59, %35, %15
  %62 = load i8*, i8** %6, align 8
  ret i8* %62
}

declare dso_local i64 @GetClearedHunkMemory(i32) #1

declare dso_local i32 @AAS_Error(i8*) #1

declare dso_local i32 @AAS_DumpAASData(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
