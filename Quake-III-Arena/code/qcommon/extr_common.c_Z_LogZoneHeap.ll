; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Z_LogZoneHeap.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Z_LogZoneHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__, i64, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@logfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"\0D\0A================\0D\0A%s log\0D\0A================\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%d %s memory in %d blocks\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%d %s memory overhead\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Z_LogZoneHeap(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @logfile, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (...) @FS_Initialized()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %82

16:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %17, i32 4096, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* @logfile, align 4
  %24 = call i32 @FS_Write(i8* %20, i32 %22, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %5, align 8
  br label %29

29:                                               ; preds = %52, %16
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = icmp ne %struct.TYPE_7__* %32, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %41, %36
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %5, align 8
  br label %29

56:                                               ; preds = %29
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 40
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %61, i32 4096, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %62, i8* %63, i32 %64)
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %68 = call i32 @strlen(i8* %67)
  %69 = load i32, i32* @logfile, align 4
  %70 = call i32 @FS_Write(i8* %66, i32 %68, i32 %69)
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %71, i32 4096, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* %75)
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %79 = call i32 @strlen(i8* %78)
  %80 = load i32, i32* @logfile, align 4
  %81 = call i32 @FS_Write(i8* %77, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %56, %15
  ret void
}

declare dso_local i32 @FS_Initialized(...) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @FS_Write(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
