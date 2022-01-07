; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_readback_part.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_readback_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__, i32*, i32, i32, i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.curl_slist = type { i8*, i32* }

@MIME_BODY_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MIMEKIND_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64)* @readback_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readback_part(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.curl_slist*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %168, %3
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %178

14:                                               ; preds = %11
  store i64 0, i64* %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.curl_slist*
  store %struct.curl_slist* %19, %struct.curl_slist** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %167 [
    i32 135, label %24
    i32 129, label %39
    i32 132, label %58
    i32 130, label %96
    i32 134, label %109
    i32 133, label %116
    i32 131, label %165
  ]

24:                                               ; preds = %14
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MIME_BODY_ONLY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 134, i32 132
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @mimesetstate(%struct.TYPE_8__* %26, i32 %34, i32* %37)
  br label %168

39:                                               ; preds = %14
  %40 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %41 = icmp ne %struct.curl_slist* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = call i32 @mimesetstate(%struct.TYPE_8__* %44, i32 130, i32* null)
  br label %168

46:                                               ; preds = %39
  %47 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %48 = call i32 @match_header(%struct.curl_slist* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %54 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @mimesetstate(%struct.TYPE_8__* %52, i32 129, i32* %55)
  br label %168

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %14, %57
  %59 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %60 = icmp ne %struct.curl_slist* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @mimesetstate(%struct.TYPE_8__* %63, i32 129, i32* %66)
  br label %95

68:                                               ; preds = %58
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %74 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %77 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = call i64 @readback_bytes(%struct.TYPE_8__* %70, i8* %71, i64 %72, i8* %75, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %68
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %91 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @mimesetstate(%struct.TYPE_8__* %85, i32 %89, i32* %92)
  br label %94

94:                                               ; preds = %83, %68
  br label %95

95:                                               ; preds = %94, %61
  br label %168

96:                                               ; preds = %14
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @readback_bytes(%struct.TYPE_8__* %98, i8* %99, i64 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = call i32 @mimesetstate(%struct.TYPE_8__* %106, i32 134, i32* null)
  br label %108

108:                                              ; preds = %104, %96
  br label %168

109:                                              ; preds = %14
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 6
  %112 = call i32 @cleanup_encoder_state(i32* %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = call i32 @mimesetstate(%struct.TYPE_8__* %114, i32 133, i32* null)
  br label %168

116:                                              ; preds = %14
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @read_encoded_part_content(%struct.TYPE_7__* %122, i8* %123, i64 %124)
  store i64 %125, i64* %9, align 8
  br label %131

126:                                              ; preds = %116
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @read_part_content(%struct.TYPE_7__* %127, i8* %128, i64 %129)
  store i64 %130, i64* %9, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i64, i64* %9, align 8
  switch i64 %132, label %164 [
    i64 0, label %133
    i64 137, label %155
    i64 136, label %155
    i64 128, label %155
  ]

133:                                              ; preds = %131
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = call i32 @mimesetstate(%struct.TYPE_8__* %135, i32 131, i32* null)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MIMEKIND_FILE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %133
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @fclose(i32* %150)
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %147, %142, %133
  br label %155

155:                                              ; preds = %131, %131, %131, %154
  %156 = load i64, i64* %8, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i64, i64* %8, align 8
  br label %162

160:                                              ; preds = %155
  %161 = load i64, i64* %9, align 8
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i64 [ %159, %158 ], [ %161, %160 ]
  store i64 %163, i64* %4, align 8
  br label %180

164:                                              ; preds = %131
  br label %168

165:                                              ; preds = %14
  %166 = load i64, i64* %8, align 8
  store i64 %166, i64* %4, align 8
  br label %180

167:                                              ; preds = %14
  br label %168

168:                                              ; preds = %167, %164, %109, %108, %95, %50, %42, %24
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %8, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %8, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 %172
  store i8* %174, i8** %6, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i64, i64* %7, align 8
  %177 = sub i64 %176, %175
  store i64 %177, i64* %7, align 8
  br label %11

178:                                              ; preds = %11
  %179 = load i64, i64* %8, align 8
  store i64 %179, i64* %4, align 8
  br label %180

180:                                              ; preds = %178, %165, %162
  %181 = load i64, i64* %4, align 8
  ret i64 %181
}

declare dso_local i32 @mimesetstate(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @match_header(%struct.curl_slist*, i8*, i32) #1

declare dso_local i64 @readback_bytes(%struct.TYPE_8__*, i8*, i64, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cleanup_encoder_state(i32*) #1

declare dso_local i64 @read_encoded_part_content(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i64 @read_part_content(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
