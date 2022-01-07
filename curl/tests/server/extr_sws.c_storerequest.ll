; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_storerequest.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_storerequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_proxy = common dso_local global i64 0, align 8
@REQUEST_PROXY_DUMP = common dso_local global i8* null, align 8
@REQUEST_DUMP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"[2] Error opening file %s error: %d %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to write request input \00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Wrote request (%zu bytes) input to %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error writing file %s error: %d %s\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Wrote only (%zu bytes) of (%zu bytes) request input to %s\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Error closing file %s error: %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @storerequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storerequest(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* @is_proxy, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @REQUEST_PROXY_DUMP, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** @REQUEST_DUMP, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8* [ %14, %13 ], [ %16, %15 ]
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %126

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %126

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i8*, i8** %10, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @EINTR, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %27, label %39

39:                                               ; preds = %37
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44, i32 %46)
  %48 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %126

49:                                               ; preds = %39
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %78, %49
  %52 = load i8*, i8** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub i64 %53, %54
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i64, i64* %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @fwrite(i8* %56, i32 1, i64 %57, i32* %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* @got_exit_signal, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %104

63:                                               ; preds = %51
  %64 = load i64, i64* %7, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @EINTR, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %51, label %80

80:                                               ; preds = %78
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, i64* %4, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %84, i8* %85)
  br label %103

87:                                               ; preds = %80
  %88 = load i64, i64* %8, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %91, i32 %92, i32 %94)
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub i64 %96, %97
  %99 = load i64, i64* %4, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 %98, i64 %99, i8* %100)
  br label %102

102:                                              ; preds = %90, %87
  br label %103

103:                                              ; preds = %102, %83
  br label %104

104:                                              ; preds = %103, %62
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @fclose(i32* %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* @errno, align 4
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @EINTR, align 4
  %114 = icmp eq i32 %112, %113
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i1 [ false, %108 ], [ %114, %111 ]
  br i1 %116, label %105, label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @strerror(i32 %123)
  %125 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %121, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %21, %25, %42, %120, %117
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
