; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_hierarchy_29_0_0.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_import_hierarchy_29_0_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"VersionMajor\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PresetList\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@HB_PRESET_TYPE_OFFICIAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"My Presets\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ChildrenArray\00", align 1
@HB_PRESET_TYPE_CUSTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @import_hierarchy_29_0_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @import_hierarchy_29_0_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  store i32* %18, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @hb_value_type(i32* %19)
  %21 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* @hb_dict_get(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = call i32* @hb_dict_get(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %27, %23, %1
  %31 = call i32* (...) @hb_value_array_init()
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @hb_value_array_len(i32* %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %53, %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @hb_value_array_get(i32* %40, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @hb_dict_get_int(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i64, i64* @HB_PRESET_TYPE_OFFICIAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %53

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32* @hb_value_dup(i32* %50)
  %52 = call i32 @hb_value_array_append(i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @hb_value_array_len(i32* %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %102, %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32* @hb_value_array_get(i32* %65, i32 %66)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @hb_dict_get_int(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i64, i64* @HB_PRESET_TYPE_OFFICIAL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %102

73:                                               ; preds = %64
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @hb_dict_get_bool(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 @hb_value_array_len(i32* %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i8* @hb_dict_get_string(i32* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %102

87:                                               ; preds = %77
  %88 = load i8*, i8** %12, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @import_folder_hierarchy_29_0_0(i8* %88, i32* %89, i32* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32* @hb_value_dup(i32* %92)
  store i32* %93, i32** %4, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @hb_value_array_insert(i32* %94, i32 %95, i32* %96)
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @hb_value_array_remove(i32* %98, i32 %99)
  br label %105

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %86, %72
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %60

105:                                              ; preds = %87, %60
  %106 = load i32*, i32** %4, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = call i32* (...) @hb_dict_init()
  store i32* %109, i32** %4, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @hb_dict_set_string(i32* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32*, i32** %4, align 8
  %113 = call i32* (...) @hb_value_array_init()
  %114 = call i32 @hb_dict_set(i32* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @HB_PRESET_TYPE_CUSTOM, align 4
  %117 = call i32 @hb_dict_set_int(i32* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @hb_dict_set_bool(i32* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @hb_value_array_append(i32* %120, i32* %121)
  br label %123

123:                                              ; preds = %108, %105
  %124 = load i32*, i32** %4, align 8
  %125 = call i32* @hb_dict_get(i32* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32* %125, i32** %5, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = call i64 @hb_value_array_len(i32* %126)
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %182, %123
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %185

133:                                              ; preds = %129
  %134 = load i32*, i32** %3, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32* @hb_value_array_get(i32* %134, i32 %135)
  store i32* %136, i32** %13, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i64 @hb_dict_get_int(i32* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i64, i64* @HB_PRESET_TYPE_OFFICIAL, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %182

142:                                              ; preds = %133
  %143 = load i32*, i32** %13, align 8
  %144 = call i64 @hb_dict_get_bool(i32* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load i32*, i32** %6, align 8
  %148 = call i64 @hb_value_array_len(i32* %147)
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = call i8* @hb_dict_get_string(i32* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %151, i8** %15, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @import_folder_hierarchy_29_0_0(i8* %152, i32* %153, i32* %154)
  %156 = load i32*, i32** %13, align 8
  %157 = call i32* @hb_dict_get(i32* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32* %157, i32** %16, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = call i64 @hb_value_array_len(i32* %158)
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %146
  %162 = load i32*, i32** %6, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = call i8* @fix_name_collisions(i32* %162, i8* %163)
  store i8* %164, i8** %17, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = call i32 @hb_dict_set_string(i32* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %166)
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load i32*, i32** %13, align 8
  %171 = call i32* @hb_value_dup(i32* %170)
  %172 = call i32 @hb_value_array_insert(i32* %168, i32 %169, i32* %171)
  %173 = load i8*, i8** %17, align 8
  %174 = call i32 @free(i8* %173)
  br label %175

175:                                              ; preds = %161, %146
  br label %181

176:                                              ; preds = %142
  %177 = load i32*, i32** %5, align 8
  %178 = load i32*, i32** %13, align 8
  %179 = call i32* @hb_value_dup(i32* %178)
  %180 = call i32 @hb_value_array_append(i32* %177, i32* %179)
  br label %181

181:                                              ; preds = %176, %175
  br label %182

182:                                              ; preds = %181, %141
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %129

185:                                              ; preds = %129
  %186 = load i32*, i32** %2, align 8
  %187 = call i64 @hb_value_type(i32* %186)
  %188 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load i32*, i32** %2, align 8
  %192 = call i32* @hb_dict_get(i32* %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32*, i32** %2, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @hb_dict_set(i32* %195, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %196)
  br label %200

198:                                              ; preds = %190, %185
  %199 = load i32*, i32** %6, align 8
  store i32* %199, i32** %2, align 8
  br label %200

200:                                              ; preds = %198, %194
  %201 = load i32*, i32** %2, align 8
  %202 = call i32* @hb_value_dup(i32* %201)
  ret i32* %202
}

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i64 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i64 @hb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

declare dso_local i32* @hb_value_dup(i32*) #1

declare dso_local i64 @hb_dict_get_bool(i32*, i8*) #1

declare dso_local i8* @hb_dict_get_string(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @import_folder_hierarchy_29_0_0(i8*, i32*, i32*) #1

declare dso_local i32 @hb_value_array_insert(i32*, i32, i32*) #1

declare dso_local i32 @hb_value_array_remove(i32*, i32) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @hb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i32 @hb_dict_set_bool(i32*, i8*, i32) #1

declare dso_local i8* @fix_name_collisions(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
