; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_parse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8* }

@SCHEME_DELIMITERS = common dso_local global i32 0, align 4
@NETWORK_DELIMITERS = common dso_local global i32 0, align 4
@HOST_PORT_DELIMITERS = common dso_local global i32 0, align 4
@PATH_DELIMITERS = common dso_local global i32 0, align 4
@QUERY_DELIMITERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_uri_parse(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %189

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @vc_uri_clear(%struct.TYPE_7__* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @SCHEME_DELIMITERS, align 4
  %21 = call i8* @vc_uri_find_delimiter(i8* %19, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %73

26:                                               ; preds = %16
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i64 @isalpha(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = call i32 @duplicate_string(i8* %48, i8** %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call i32 @vc_uri_set_path_extension(%struct.TYPE_7__* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %189

55:                                               ; preds = %41, %38, %26
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @create_unescaped_string(i8* %56, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %186

66:                                               ; preds = %55
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @to_lower_string(i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %66, %16
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %79, label %116

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 47
  br i1 %84, label %85, label %116

85:                                               ; preds = %79
  store i8* null, i8** %9, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* @NETWORK_DELIMITERS, align 4
  %90 = call i8* @vc_uri_find_delimiter(i8* %88, i32 %89)
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 64
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load i8*, i8** %6, align 8
  store i8* %96, i8** %9, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i32, i32* @HOST_PORT_DELIMITERS, align 4
  %100 = call i8* @vc_uri_find_delimiter(i8* %98, i32 %99)
  store i8* %100, i8** %6, align 8
  br label %101

101:                                              ; preds = %95, %85
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @parse_authority(%struct.TYPE_7__* %102, i8* %103, i32 %109, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %101
  br label %186

114:                                              ; preds = %101
  %115 = load i8*, i8** %6, align 8
  store i8* %115, i8** %5, align 8
  br label %116

116:                                              ; preds = %114, %79, %73
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* @PATH_DELIMITERS, align 4
  %119 = call i8* @vc_uri_find_delimiter(i8* %117, i32 %118)
  store i8* %119, i8** %6, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %116
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i8* @create_unescaped_string(i8* %129, i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = call i32 @vc_uri_set_path_extension(%struct.TYPE_7__* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %128
  br label %186

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %116
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 63
  br i1 %146, label %147, label %165

147:                                              ; preds = %142
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  store i8* %149, i8** %5, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* @QUERY_DELIMITERS, align 4
  %152 = call i8* @vc_uri_find_delimiter(i8* %150, i32 %151)
  store i8* %152, i8** %6, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32 @parse_query(%struct.TYPE_7__* %153, i8* %154, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %147
  br label %186

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164, %142
  %166 = load i8*, i8** %6, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 35
  br i1 %169, label %170, label %185

170:                                              ; preds = %165
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %172, i8** %5, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = load i8*, i8** %5, align 8
  %175 = call i32 @strlen(i8* %174)
  %176 = call i8* @create_unescaped_string(i8* %173, i32 %175)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %170
  br label %186

184:                                              ; preds = %170
  br label %185

185:                                              ; preds = %184, %165
  store i32 1, i32* %3, align 4
  br label %189

186:                                              ; preds = %183, %163, %140, %113, %65
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %188 = call i32 @vc_uri_clear(%struct.TYPE_7__* %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %186, %185, %47, %15
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @vc_uri_clear(%struct.TYPE_7__*) #1

declare dso_local i8* @vc_uri_find_delimiter(i8*, i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @duplicate_string(i8*, i8**) #1

declare dso_local i32 @vc_uri_set_path_extension(%struct.TYPE_7__*) #1

declare dso_local i8* @create_unescaped_string(i8*, i32) #1

declare dso_local i32 @to_lower_string(i8*) #1

declare dso_local i32 @parse_authority(%struct.TYPE_7__*, i8*, i32, i8*) #1

declare dso_local i32 @parse_query(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
