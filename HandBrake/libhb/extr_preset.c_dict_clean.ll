; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_dict_clean.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_dict_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@HB_DICT_ITER_DONE = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Preset %s: Incompatible value types for key %s. Dropping.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Preset %s: Incorrect value type for key %s. Converting.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @dict_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dict_clean(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @hb_value_dup(i32* %18)
  store i32* %19, i32** %5, align 8
  store i8* null, i8** %12, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @hb_dict_get(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32*, i32** %8, align 8
  %26 = call i8* @hb_value_get_string(i32* %25)
  store i8* %26, i8** %12, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @hb_dict_iter_init(i32* %28)
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %172, %27
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @HB_DICT_ITER_DONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %176

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = call i8* @hb_dict_iter_key(i64 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32* @hb_dict_iter_value(i64 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @hb_value_type(i32* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32* @hb_dict_get(i32* %41, i8* %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @hb_value_type(i32* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32*, i32** %3, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @hb_dict_remove(i32* %49, i8* %50)
  br label %171

52:                                               ; preds = %34
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %108

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %64, %60, %56
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @hb_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @hb_dict_remove(i32* %76, i8* %77)
  br label %107

79:                                               ; preds = %68
  %80 = load i32*, i32** %8, align 8
  %81 = call i64 @hb_value_is_number(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @hb_value_is_number(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32*, i32** %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32* @hb_value_xform(i32* %88, i64 %89)
  store i32* %90, i32** %13, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @hb_dict_set(i32* %91, i8* %92, i32* %93)
  br label %106

95:                                               ; preds = %83, %79
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @hb_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %96, i8* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32* @hb_value_xform(i32* %99, i64 %100)
  store i32* %101, i32** %14, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @hb_dict_set(i32* %102, i8* %103, i32* %104)
  br label %106

106:                                              ; preds = %95, %87
  br label %107

107:                                              ; preds = %106, %72
  br label %170

108:                                              ; preds = %52
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32*, i32** %3, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i32* @hb_dict_get(i32* %117, i8* %118)
  store i32* %119, i32** %8, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %9, align 8
  call void @dict_clean(i32* %120, i32* %121)
  br label %169

122:                                              ; preds = %112, %108
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %168

126:                                              ; preds = %122
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %168

130:                                              ; preds = %126
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @hb_value_array_len(i32* %131)
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %130
  %135 = load i32*, i32** %9, align 8
  %136 = call i32* @hb_value_array_get(i32* %135, i32 0)
  store i32* %136, i32** %9, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i64 @hb_value_type(i32* %137)
  %139 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %134
  %142 = load i32*, i32** %3, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call i32* @hb_dict_get(i32* %142, i8* %143)
  store i32* %144, i32** %8, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @hb_value_array_len(i32* %145)
  store i32 %146, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %163, %141
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %16, align 4
  %154 = call i32* @hb_value_array_get(i32* %152, i32 %153)
  store i32* %154, i32** %17, align 8
  %155 = load i32*, i32** %17, align 8
  %156 = call i64 @hb_value_type(i32* %155)
  %157 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load i32*, i32** %17, align 8
  %161 = load i32*, i32** %9, align 8
  call void @dict_clean(i32* %160, i32* %161)
  br label %162

162:                                              ; preds = %159, %151
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %147

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166, %134
  br label %168

168:                                              ; preds = %167, %130, %126, %122
  br label %169

169:                                              ; preds = %168, %116
  br label %170

170:                                              ; preds = %169, %107
  br label %171

171:                                              ; preds = %170, %48
  br label %172

172:                                              ; preds = %171
  %173 = load i32*, i32** %5, align 8
  %174 = load i64, i64* %6, align 8
  %175 = call i64 @hb_dict_iter_next(i32* %173, i64 %174)
  store i64 %175, i64* %6, align 8
  br label %30

176:                                              ; preds = %30
  %177 = call i32 @hb_value_free(i32** %5)
  %178 = load i32*, i32** %3, align 8
  %179 = call i32* @hb_dict_get(i32* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %180 = call i32 @hb_value_get_bool(i32* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %211, label %182

182:                                              ; preds = %176
  %183 = load i32*, i32** %4, align 8
  %184 = call i64 @hb_dict_iter_init(i32* %183)
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %206, %182
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* @HB_DICT_ITER_DONE, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %210

189:                                              ; preds = %185
  %190 = load i64, i64* %6, align 8
  %191 = call i8* @hb_dict_iter_key(i64 %190)
  store i8* %191, i8** %7, align 8
  %192 = load i64, i64* %6, align 8
  %193 = call i32* @hb_dict_iter_value(i64 %192)
  store i32* %193, i32** %9, align 8
  %194 = load i32*, i32** %3, align 8
  %195 = load i8*, i8** %7, align 8
  %196 = call i32* @hb_dict_get(i32* %194, i8* %195)
  store i32* %196, i32** %8, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %189
  %200 = load i32*, i32** %3, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = call i32* @hb_value_dup(i32* %202)
  %204 = call i32 @hb_dict_set(i32* %200, i8* %201, i32* %203)
  br label %205

205:                                              ; preds = %199, %189
  br label %206

206:                                              ; preds = %205
  %207 = load i32*, i32** %4, align 8
  %208 = load i64, i64* %6, align 8
  %209 = call i64 @hb_dict_iter_next(i32* %207, i64 %208)
  store i64 %209, i64* %6, align 8
  br label %185

210:                                              ; preds = %185
  br label %211

211:                                              ; preds = %210, %176
  ret void
}

declare dso_local i32* @hb_value_dup(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i64 @hb_dict_iter_init(i32*) #1

declare dso_local i8* @hb_dict_iter_key(i64) #1

declare dso_local i32* @hb_dict_iter_value(i64) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_dict_remove(i32*, i8*) #1

declare dso_local i32 @hb_error(i8*, i8*, i8*) #1

declare dso_local i64 @hb_value_is_number(i32*) #1

declare dso_local i32* @hb_value_xform(i32*, i64) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i64 @hb_dict_iter_next(i32*, i64) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_value_get_bool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
