; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_read_field_headers.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_read_field_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OperationConfig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.curl_slist = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Out of memory for field headers!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Header file %s read error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"File %s line %d: header too long (truncated)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.OperationConfig*, i8*, i32*, %struct.curl_slist**)* @read_field_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_field_headers(%struct.OperationConfig* %0, i8* %1, i32* %2, %struct.curl_slist** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.OperationConfig*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.curl_slist**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [999 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.OperationConfig* %0, %struct.OperationConfig** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.curl_slist** %3, %struct.curl_slist*** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %17

17:                                               ; preds = %118, %83, %82, %4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @getc(i32* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %15, align 4
  %27 = trunc i32 %26 to i8
  %28 = call i64 @ISSPACE(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %25, %17
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds [999 x i8], [999 x i8]* %14, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @ISSPACE(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %34, %31
  %42 = phi i1 [ false, %31 ], [ %40, %34 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %10, align 8
  br label %31

46:                                               ; preds = %41
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds [999 x i8], [999 x i8]* %14, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.curl_slist**, %struct.curl_slist*** %9, align 8
  %53 = getelementptr inbounds [999 x i8], [999 x i8]* %14, i64 0, i64 0
  %54 = call i64 @slist_append(%struct.curl_slist** %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.OperationConfig*, %struct.OperationConfig** %6, align 8
  %58 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %119

63:                                               ; preds = %49
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %25, %22
  %66 = load i32, i32* %15, align 4
  switch i32 %66, label %93 [
    i32 128, label %67
    i32 13, label %82
    i32 10, label %83
    i32 35, label %87
  ]

67:                                               ; preds = %65
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @ferror(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.OperationConfig*, %struct.OperationConfig** %6, align 8
  %73 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i8* @strerror(i32 %78)
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %77, i8* %79)
  store i32 -1, i32* %5, align 4
  br label %119

81:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %119

82:                                               ; preds = %65
  br label %17

83:                                               ; preds = %65
  store i64 0, i64* %11, align 8
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %17

87:                                               ; preds = %65
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %65, %92
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %93
  %99 = load i64, i64* %10, align 8
  %100 = icmp eq i64 %99, 998
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.OperationConfig*, %struct.OperationConfig** %6, align 8
  %103 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @warnf(%struct.TYPE_2__* %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %105, i32 %106)
  store i32 32, i32* %15, align 4
  br label %108

108:                                              ; preds = %101, %98
  %109 = load i64, i64* %10, align 8
  %110 = icmp ule i64 %109, 998
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = trunc i32 %112 to i8
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %10, align 8
  %116 = getelementptr inbounds [999 x i8], [999 x i8]* %14, i64 0, i64 %114
  store i8 %113, i8* %116, align 1
  br label %117

117:                                              ; preds = %111, %108
  br label %118

118:                                              ; preds = %117, %93
  br label %17

119:                                              ; preds = %81, %71, %56
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @slist_append(%struct.curl_slist**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @warnf(%struct.TYPE_2__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
