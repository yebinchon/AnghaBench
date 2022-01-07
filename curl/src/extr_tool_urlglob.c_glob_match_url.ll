; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_match_url.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_match_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8 }
%struct.TYPE_8__ = type { i8**, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%0*lu\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"internal error: invalid pattern type (%d)\0A\00", align 1
@CURLE_FAILED_INIT = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@SANITIZE_ALLOW_PATH = common dso_local global i32 0, align 4
@SANITIZE_ALLOW_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glob_match_url(i8** %0, i8* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [18 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i8**, i8*** %5, align 8
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i8* @malloc(i64 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %29, i32* %4, align 4
  br label %213

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %196, %30
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %206

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 35
  br i1 %39, label %40, label %170

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @ISDIGIT(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %170

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %14, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i64 @strtoul(i8* %49, i8** %6, i32 10)
  store i64 %50, i64* %15, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %46
  %57 = load i64, i64* %15, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %15, align 8
  store i64 0, i64* %17, align 8
  br label %59

59:                                               ; preds = %83, %56
  %60 = load i64, i64* %17, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %80
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %16, align 8
  br label %86

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %17, align 8
  br label %59

86:                                               ; preds = %76, %59
  br label %87

87:                                               ; preds = %86, %46
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %89 = icmp ne %struct.TYPE_12__* %88, null
  br i1 %89, label %90, label %165

90:                                               ; preds = %87
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %155 [
    i32 128, label %94
    i32 130, label %129
    i32 129, label %138
  ]

94:                                               ; preds = %90
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = icmp ne i8** %99, null
  br i1 %100, label %101, label %128

101:                                              ; preds = %94
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i8*, i8** %106, i64 %111
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %11, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i8*, i8** %118, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %12, align 8
  br label %128

128:                                              ; preds = %101, %94
  br label %164

129:                                              ; preds = %90
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i8, i8* %133, align 8
  %135 = getelementptr inbounds [18 x i8], [18 x i8]* %10, i64 0, i64 0
  store i8 %134, i8* %135, align 16
  %136 = getelementptr inbounds [18 x i8], [18 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %136, align 1
  %137 = getelementptr inbounds [18 x i8], [18 x i8]* %10, i64 0, i64 0
  store i8* %137, i8** %11, align 8
  store i64 1, i64* %12, align 8
  br label %164

138:                                              ; preds = %90
  %139 = getelementptr inbounds [18 x i8], [18 x i8]* %10, i64 0, i64 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @msnprintf(i8* %139, i32 18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %149)
  %151 = getelementptr inbounds [18 x i8], [18 x i8]* %10, i64 0, i64 0
  store i8* %151, i8** %11, align 8
  %152 = getelementptr inbounds [18 x i8], [18 x i8]* %10, i64 0, i64 0
  %153 = call i32 @strlen(i8* %152)
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %12, align 8
  br label %164

155:                                              ; preds = %90
  %156 = load i32, i32* @stderr, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @Curl_safefree(i8* %161)
  %163 = load i32, i32* @CURLE_FAILED_INIT, align 4
  store i32 %163, i32* %4, align 4
  br label %213

164:                                              ; preds = %138, %129, %128
  br label %169

165:                                              ; preds = %87
  %166 = load i8*, i8** %14, align 8
  store i8* %166, i8** %6, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %6, align 8
  store i8* %167, i8** %11, align 8
  store i64 1, i64* %12, align 8
  br label %169

169:                                              ; preds = %165, %164
  br label %173

170:                                              ; preds = %40, %35
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %6, align 8
  store i8* %171, i8** %11, align 8
  store i64 1, i64* %12, align 8
  br label %173

173:                                              ; preds = %170, %169
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = add i64 %174, %175
  %177 = load i64, i64* %9, align 8
  %178 = icmp uge i64 %176, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %173
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* %13, align 8
  %182 = add i64 %180, %181
  %183 = mul i64 %182, 2
  store i64 %183, i64* %9, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i64, i64* %9, align 8
  %186 = add i64 %185, 1
  %187 = call i8* @realloc(i8* %184, i64 %186)
  store i8* %187, i8** %18, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %179
  %191 = load i8*, i8** %8, align 8
  %192 = call i32 @Curl_safefree(i8* %191)
  %193 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %193, i32* %4, align 4
  br label %213

194:                                              ; preds = %179
  %195 = load i8*, i8** %18, align 8
  store i8* %195, i8** %8, align 8
  br label %196

196:                                              ; preds = %194, %173
  %197 = load i8*, i8** %8, align 8
  %198 = load i64, i64* %13, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load i8*, i8** %11, align 8
  %201 = load i64, i64* %12, align 8
  %202 = call i32 @memcpy(i8* %199, i8* %200, i64 %201)
  %203 = load i64, i64* %12, align 8
  %204 = load i64, i64* %13, align 8
  %205 = add i64 %204, %203
  store i64 %205, i64* %13, align 8
  br label %31

206:                                              ; preds = %31
  %207 = load i8*, i8** %8, align 8
  %208 = load i64, i64* %13, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8 0, i8* %209, align 1
  %210 = load i8*, i8** %8, align 8
  %211 = load i8**, i8*** %5, align 8
  store i8* %210, i8** %211, align 8
  %212 = load i32, i32* @CURLE_OK, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %206, %190, %155, %28
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
