; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_passive_mode_epsv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_passive_mode_epsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ftp_passive_mode_epsv.d = internal constant i8 124, align 1
@ftp_passive_mode_epsv.command = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"EPSV\0D\0A\00", align 1
@ftp_passive_mode_epsv.epsv_codes = internal constant [2 x i32] [i32 229, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Server data port: %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ftp_passive_mode_epsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_passive_mode_epsv(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = load i8*, i8** @ftp_passive_mode_epsv.command, align 8
  %10 = call i32 @ftp_send_command(%struct.TYPE_5__* %8, i8* %9, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ftp_passive_mode_epsv.epsv_codes, i64 0, i64 0), i8** %4)
  %11 = icmp ne i32 %10, 229
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %110

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %5, align 8
  br label %52

38:                                               ; preds = %24
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 41
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %6, align 8
  br label %56

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %17

56:                                               ; preds = %46, %17
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59, %56
  br label %110

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %110

69:                                               ; preds = %63
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 124
  br i1 %74, label %93, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 124
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 124
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 124
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %81, %75, %69
  br label %110

94:                                               ; preds = %87
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8* %96, i8** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  store i8 0, i8* %98, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @atoi(i8* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ff_dlog(%struct.TYPE_5__* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @av_free(i8* %108)
  store i32 0, i32* %2, align 4
  br label %117

110:                                              ; preds = %93, %68, %62, %15
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @av_free(i8* %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 -1, i32* %114, align 4
  %115 = load i32, i32* @ENOSYS, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %110, %94
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @ftp_send_command(%struct.TYPE_5__*, i8*, i32*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
