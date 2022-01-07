; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpAuth.c_httpParseBasicAuthToken.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpAuth.c_httpParseBasicAuthToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"context:%p, fd:%d, ip:%s, basic token:%s parsed error\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"context:%p, fd:%d, ip:%s, basic token:%s invalid format\00", align 1
@TSDB_USER_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"context:%p, fd:%d, ip:%s, basic token:%s parse user error\00", align 1
@TSDB_PASSWORD_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"context:%p, fd:%d, ip:%s, basic token:%s parse password error\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"context:%p, fd:%d, ip:%s, basic token parsed success, user:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpParseBasicAuthToken(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 0, i8* %17, align 1
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @base64_decode(i8* %18, i32 %19, i32* %8)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @httpError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %28, i32 %31, i32 %34, i8* %35)
  store i32 0, i32* %4, align 4
  br label %137

37:                                               ; preds = %24
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @httpError(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_5__* %43, i32 %46, i32 %49, i8* %50)
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  store i32 0, i32* %4, align 4
  br label %137

54:                                               ; preds = %37
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @TSDB_USER_LEN, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63, %54
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @httpError(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_5__* %68, i32 %71, i32 %74, i8* %75)
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @free(i8* %77)
  store i32 0, i32* %4, align 4
  br label %137

79:                                               ; preds = %63
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @strncpy(i32 %82, i8* %83, i64 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8*, i8** %12, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %104, label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @TSDB_PASSWORD_LEN, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100, %79
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @httpError(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_5__* %105, i32 %108, i32 %111, i8* %112)
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @free(i8* %114)
  store i32 0, i32* %4, align 4
  br label %137

116:                                              ; preds = %100
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 @strncpy(i32 %119, i8* %120, i64 %122)
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @httpTrace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_5__* %126, i32 %129, i32 %132, i32 %135)
  store i32 1, i32* %4, align 4
  br label %137

137:                                              ; preds = %116, %104, %67, %42, %27
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @base64_decode(i8*, i32, i32*) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
