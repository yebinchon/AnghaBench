; ModuleID = '/home/carl/AnghaBench/esp-idf/components/nghttp/port/extr_http_parser.c_http_parser_parse_url.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/nghttp/port/extr_http_parser.c_http_parser_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@s_req_spaces_before_url = common dso_local global i32 0, align 4
@UF_MAX = common dso_local global i32 0, align 4
@UF_SCHEMA = common dso_local global i32 0, align 4
@UF_HOST = common dso_local global i32 0, align 4
@UF_PATH = common dso_local global i32 0, align 4
@UF_QUERY = common dso_local global i32 0, align 4
@UF_FRAGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unexpected state\00", align 1
@UF_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_parser_parse_url(i8* %0, i64 %1, i32 %2, %struct.http_parser_url* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.http_parser_url*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.http_parser_url* %3, %struct.http_parser_url** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %17 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %19 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @s_req_spaces_before_url, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 129, %22 ], [ %24, %23 ]
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @UF_MAX, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %11, align 8
  br label %29

29:                                               ; preds = %98, %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = icmp ult i8* %30, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @parse_url_char(i32 %36, i8 signext %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %54 [
    i32 139, label %41
    i32 132, label %42
    i32 131, label %42
    i32 129, label %42
    i32 134, label %42
    i32 137, label %42
    i32 133, label %43
    i32 128, label %45
    i32 130, label %46
    i32 136, label %48
    i32 135, label %50
    i32 138, label %52
  ]

41:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %178

42:                                               ; preds = %35, %35, %35, %35, %35
  br label %98

43:                                               ; preds = %35
  %44 = load i32, i32* @UF_SCHEMA, align 4
  store i32 %44, i32* %12, align 4
  br label %56

45:                                               ; preds = %35
  store i32 1, i32* %14, align 4
  br label %46

46:                                               ; preds = %35, %45
  %47 = load i32, i32* @UF_HOST, align 4
  store i32 %47, i32* %12, align 4
  br label %56

48:                                               ; preds = %35
  %49 = load i32, i32* @UF_PATH, align 4
  store i32 %49, i32* %12, align 4
  br label %56

50:                                               ; preds = %35
  %51 = load i32, i32* @UF_QUERY, align 4
  store i32 %51, i32* %12, align 4
  br label %56

52:                                               ; preds = %35
  %53 = load i32, i32* @UF_FRAGMENT, align 4
  store i32 %53, i32* %12, align 4
  br label %56

54:                                               ; preds = %35
  %55 = call i32 @assert(i32 0)
  store i32 1, i32* %5, align 4
  br label %178

56:                                               ; preds = %52, %50, %48, %46, %43
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %62 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %98

70:                                               ; preds = %56
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %78 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %85 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %12, align 4
  %92 = shl i32 1, %91
  %93 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %94 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %70, %60, %42
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %11, align 8
  br label %29

101:                                              ; preds = %29
  %102 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %103 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @UF_SCHEMA, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %111 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @UF_HOST, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 1, i32* %5, align 4
  br label %178

118:                                              ; preds = %109, %101
  %119 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %120 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UF_HOST, align 4
  %123 = shl i32 1, %122
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load i8*, i8** %6, align 8
  %128 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i64 @http_parse_host(i8* %127, %struct.http_parser_url* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 1, i32* %5, align 4
  br label %178

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %118
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %139 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @UF_HOST, align 4
  %142 = shl i32 1, %141
  %143 = load i32, i32* @UF_PORT, align 4
  %144 = shl i32 1, %143
  %145 = or i32 %142, %144
  %146 = icmp ne i32 %140, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  store i32 1, i32* %5, align 4
  br label %178

148:                                              ; preds = %137, %134
  %149 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %150 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @UF_PORT, align 4
  %153 = shl i32 1, %152
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %148
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %159 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %158, i32 0, i32 2
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* @UF_PORT, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %157, i64 %166
  %168 = call i64 @strtoul(i8* %167, i32* null, i32 10)
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %15, align 8
  %170 = icmp ugt i64 %169, 65535
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  store i32 1, i32* %5, align 4
  br label %178

172:                                              ; preds = %156
  %173 = load i64, i64* %15, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %176 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %172, %148
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %171, %147, %132, %117, %54, %41
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @parse_url_char(i32, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @http_parse_host(i8*, %struct.http_parser_url*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
