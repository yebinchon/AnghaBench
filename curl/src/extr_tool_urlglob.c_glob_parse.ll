; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_parse.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unmatched close brace/bracket\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@GLOB_PATTERN_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"too many globs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i64*)* @glob_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob_parse(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* @CURLE_OK, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i64*, i64** %9, align 8
  store i64 1, i64* %16, align 8
  br label %17

17:                                               ; preds = %184, %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br i1 %27, label %28, label %185

28:                                               ; preds = %26
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  store i64 0, i64* %13, align 8
  br label %32

32:                                               ; preds = %126, %63, %28
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 123
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %136

44:                                               ; preds = %42
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 91
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  store i64 0, i64* %14, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @peek_ipv6(i8* %50, i64* %14)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 93
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i64 2, i64* %14, align 8
  br label %60

60:                                               ; preds = %59, %53, %49
  %61 = load i64, i64* %14, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i64, i64* %14, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %12, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %7, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %13, align 8
  br label %32

77:                                               ; preds = %60
  br label %136

78:                                               ; preds = %44
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 125
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 93
  br i1 %87, label %88, label %92

88:                                               ; preds = %83, %78
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %91 = call i32 @GLOBERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %187

92:                                               ; preds = %83
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 92
  br i1 %96, label %97, label %126

97:                                               ; preds = %92
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 123
  br i1 %102, label %121, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 91
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 125
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 93
  br i1 %120, label %121, label %126

121:                                              ; preds = %115, %109, %103, %97
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %8, align 8
  br label %126

126:                                              ; preds = %121, %115, %92
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %7, align 8
  %129 = load i8, i8* %127, align 1
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  store i8 %129, i8* %130, align 1
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %13, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %13, align 8
  br label %32

136:                                              ; preds = %77, %42
  %137 = load i64, i64* %13, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i8*, i8** %12, align 8
  store i8 0, i8* %140, align 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @glob_fixed(%struct.TYPE_6__* %141, i8* %144, i64 %145)
  store i32 %146, i32* %10, align 4
  br label %173

147:                                              ; preds = %136
  %148 = load i8*, i8** %7, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  switch i32 %150, label %172 [
    i32 0, label %151
    i32 123, label %152
    i32 91, label %162
  ]

151:                                              ; preds = %147
  br label %172

152:                                              ; preds = %147
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %8, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = load i64*, i64** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  %161 = call i32 @glob_set(%struct.TYPE_6__* %157, i8** %7, i64* %8, i64* %158, i32 %159)
  store i32 %161, i32* %10, align 4
  br label %172

162:                                              ; preds = %147
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %7, align 8
  %165 = load i64, i64* %8, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %8, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = load i64*, i64** %9, align 8
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  %171 = call i32 @glob_range(%struct.TYPE_6__* %167, i8** %7, i64* %8, i64* %168, i32 %169)
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %147, %162, %152, %151
  br label %173

173:                                              ; preds = %172, %139
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* @GLOB_PATTERN_NUM, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i64, i64* %8, align 8
  %182 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %183 = call i32 @GLOBERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %181, i32 %182)
  store i32 %183, i32* %5, align 4
  br label %187

184:                                              ; preds = %173
  br label %17

185:                                              ; preds = %26
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %180, %88
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @peek_ipv6(i8*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @GLOBERROR(i8*, i64, i32) #1

declare dso_local i32 @glob_fixed(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @glob_set(%struct.TYPE_6__*, i8**, i64*, i64*, i32) #1

declare dso_local i32 @glob_range(%struct.TYPE_6__*, i8**, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
