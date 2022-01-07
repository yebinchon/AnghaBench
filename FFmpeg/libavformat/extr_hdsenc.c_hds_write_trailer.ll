; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_hds_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_hds_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s/index.f4m\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s/stream%d.abst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @hds_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hds_write_trailer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hds_flush(%struct.TYPE_9__* %16, %struct.TYPE_10__* %22, i32 1, i32 %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @write_manifest(%struct.TYPE_9__* %36, i32 1)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %43, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %49 = call i32 @unlink(i8* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %65, %42
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %57, i32 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %60, i32 %61)
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %64 = call i32 @unlink(i8* %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @rmdir(i8* %71)
  br label %73

73:                                               ; preds = %68, %35
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = call i32 @hds_free(%struct.TYPE_9__* %74)
  ret i32 0
}

declare dso_local i32 @hds_flush(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @write_manifest(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @hds_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
