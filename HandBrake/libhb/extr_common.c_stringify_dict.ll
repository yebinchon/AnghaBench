; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_stringify_dict.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_stringify_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Num\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@HB_VALUE_TYPE_INT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@HB_VALUE_TYPE_NULL = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @stringify_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stringify_dict(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %22 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  store i8** null, i8*** %8, align 8
  store i32 1, i32* %11, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @hb_dict_elements(i32* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %3, align 8
  br label %220

28:                                               ; preds = %2
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @hb_dict_elements(i32* %29)
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @hb_dict_get(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @hb_dict_get(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load i32*, i32** %12, align 8
  %44 = call i64 @hb_value_type(i32* %43)
  %45 = load i64, i64* @HB_VALUE_TYPE_INT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i32*, i32** %13, align 8
  %49 = call i64 @hb_value_type(i32* %48)
  %50 = load i64, i64* @HB_VALUE_TYPE_INT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @hb_value_get_int(i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @hb_value_get_int(i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = call i8* @append_string(i8* %60, i8* %61)
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %3, align 8
  br label %220

66:                                               ; preds = %47, %42, %39, %32
  br label %67

67:                                               ; preds = %66, %28
  %68 = load i32, i32* %4, align 4
  %69 = call i32* @hb_filter_get(i32 %68)
  store i32* %69, i32** %17, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  %74 = call i8** @hb_filter_get_keys(i32 %73)
  store i8** %74, i8*** %8, align 8
  %75 = load i8**, i8*** %8, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i8**, i8*** %8, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8**, i8*** %8, align 8
  %84 = call i32 @hb_str_vfree(i8** %83)
  store i8** null, i8*** %8, align 8
  br label %85

85:                                               ; preds = %82, %77, %72
  br label %86

86:                                               ; preds = %85, %67
  store i32 0, i32* %19, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @hb_dict_iter_init(i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i8**, i8*** %8, align 8
  %90 = icmp eq i8** %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @hb_dict_iter_next_ex(i32* %92, i32* %10, i8** %7, i32* null)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %18, align 4
  br label %105

97:                                               ; preds = %86
  %98 = load i8**, i8*** %8, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %7, align 8
  %103 = icmp eq i8* %102, null
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %97, %91
  br label %106

106:                                              ; preds = %215, %105
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br i1 %109, label %110, label %216

110:                                              ; preds = %106
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32* @hb_dict_get(i32* %111, i8* %112)
  store i32* %113, i32** %9, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %196

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %6, align 8
  %121 = call i8* @append_string(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %121, i8** %6, align 8
  br label %122

122:                                              ; preds = %119, %116
  store i32 0, i32* %11, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i8* @append_string(i8* %123, i8* %124)
  store i8* %125, i8** %6, align 8
  store i32 1, i32* %20, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = call i64 @hb_value_type(i32* %126)
  %128 = load i64, i64* @HB_VALUE_TYPE_NULL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 0, i32* %20, align 4
  br label %149

131:                                              ; preds = %122
  %132 = load i32*, i32** %9, align 8
  %133 = call i64 @hb_value_type(i32* %132)
  %134 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @hb_dict_elements(i32* %137)
  store i32 %138, i32* %20, align 4
  br label %148

139:                                              ; preds = %131
  %140 = load i32*, i32** %9, align 8
  %141 = call i64 @hb_value_type(i32* %140)
  %142 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @hb_value_array_len(i32* %145)
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %136
  br label %149

149:                                              ; preds = %148, %130
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %149
  %153 = load i32, i32* %4, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = call i8* @hb_filter_settings_string(i32 %153, i32* %154)
  store i8* %155, i8** %21, align 8
  %156 = load i8*, i8** %21, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %194

158:                                              ; preds = %152
  %159 = load i8*, i8** %6, align 8
  %160 = call i8* @append_string(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %160, i8** %6, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = call i64 @hb_value_type(i32* %161)
  %163 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load i8*, i8** %6, align 8
  %167 = call i8* @append_string(i8* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %167, i8** %6, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = load i8*, i8** %21, align 8
  %170 = call i8* @append_string(i8* %168, i8* %169)
  store i8* %170, i8** %6, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = call i8* @append_string(i8* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %172, i8** %6, align 8
  br label %191

173:                                              ; preds = %158
  %174 = load i32*, i32** %9, align 8
  %175 = call i64 @hb_value_type(i32* %174)
  %176 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load i8*, i8** %6, align 8
  %180 = call i8* @append_string(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %180, i8** %6, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load i8*, i8** %21, align 8
  %183 = call i8* @append_string(i8* %181, i8* %182)
  store i8* %183, i8** %6, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = call i8* @append_string(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %185, i8** %6, align 8
  br label %190

186:                                              ; preds = %173
  %187 = load i8*, i8** %6, align 8
  %188 = load i8*, i8** %21, align 8
  %189 = call i8* @append_string(i8* %187, i8* %188)
  store i8* %189, i8** %6, align 8
  br label %190

190:                                              ; preds = %186, %178
  br label %191

191:                                              ; preds = %190, %165
  %192 = load i8*, i8** %21, align 8
  %193 = call i32 @free(i8* %192)
  br label %194

194:                                              ; preds = %191, %152
  br label %195

195:                                              ; preds = %194, %149
  br label %196

196:                                              ; preds = %195, %110
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %19, align 4
  %199 = load i8**, i8*** %8, align 8
  %200 = icmp eq i8** %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @hb_dict_iter_next_ex(i32* %202, i32* %10, i8** %7, i32* null)
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %18, align 4
  br label %215

207:                                              ; preds = %196
  %208 = load i8**, i8*** %8, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %7, align 8
  %213 = icmp eq i8* %212, null
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %207, %201
  br label %106

216:                                              ; preds = %106
  %217 = load i8**, i8*** %8, align 8
  %218 = call i32 @hb_str_vfree(i8** %217)
  %219 = load i8*, i8** %6, align 8
  store i8* %219, i8** %3, align 8
  br label %220

220:                                              ; preds = %216, %52, %26
  %221 = load i8*, i8** %3, align 8
  ret i8* %221
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @hb_dict_elements(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i32, i32) #1

declare dso_local i8* @append_string(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @hb_filter_get(i32) #1

declare dso_local i8** @hb_filter_get_keys(i32) #1

declare dso_local i32 @hb_str_vfree(i8**) #1

declare dso_local i32 @hb_dict_iter_init(i32*) #1

declare dso_local i32 @hb_dict_iter_next_ex(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i8* @hb_filter_settings_string(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
