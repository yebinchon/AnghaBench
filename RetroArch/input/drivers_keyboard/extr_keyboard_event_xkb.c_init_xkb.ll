; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_keyboard/extr_keyboard_event_xkb.c_init_xkb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_keyboard/extr_keyboard_event_xkb.c_init_xkb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.xkb_rule_names = type { i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@MOD_MAP_SIZE = common dso_local global i32 0, align 4
@mod_map_idx = common dso_local global i32* null, align 8
@mod_map_bit = common dso_local global i32* null, align 8
@XKB_CONTEXT_NO_FLAGS = common dso_local global i32 0, align 4
@xkb_ctx = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@XKB_KEYMAP_FORMAT_TEXT_V1 = common dso_local global i32 0, align 4
@XKB_KEYMAP_COMPILE_NO_FLAGS = common dso_local global i32 0, align 4
@xkb_map = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"evdev\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@XKB_MAP_COMPILE_NO_FLAGS = common dso_local global i32 0, align 4
@xkb_state = common dso_local global i32 0, align 4
@XKB_MOD_NAME_CAPS = common dso_local global i32 0, align 4
@RETROKMOD_CAPSLOCK = common dso_local global i32 0, align 4
@XKB_MOD_NAME_SHIFT = common dso_local global i32 0, align 4
@RETROKMOD_SHIFT = common dso_local global i32 0, align 4
@XKB_MOD_NAME_CTRL = common dso_local global i32 0, align 4
@RETROKMOD_CTRL = common dso_local global i32 0, align 4
@XKB_MOD_NAME_ALT = common dso_local global i32 0, align 4
@RETROKMOD_ALT = common dso_local global i32 0, align 4
@XKB_MOD_NAME_LOGO = common dso_local global i32 0, align 4
@RETROKMOD_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_xkb(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca %struct.xkb_rule_names, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load i32, i32* @MOD_MAP_SIZE, align 4
  %13 = call i64 @calloc(i32 %12, i32 4)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** @mod_map_idx, align 8
  %15 = load i32*, i32** @mod_map_idx, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %169

18:                                               ; preds = %2
  %19 = load i32, i32* @MOD_MAP_SIZE, align 4
  %20 = call i64 @calloc(i32 %19, i32 4)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** @mod_map_bit, align 8
  %22 = load i32*, i32** @mod_map_bit, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %169

25:                                               ; preds = %18
  %26 = load i32, i32* @XKB_CONTEXT_NO_FLAGS, align 4
  %27 = call i64 @xkb_context_new(i32 %26)
  store i64 %27, i64* @xkb_ctx, align 8
  %28 = load i64, i64* @xkb_ctx, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %112

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @PROT_READ, align 4
  %36 = load i32, i32* @MAP_SHARED, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @mmap(i32* null, i64 %34, i32 %35, i32 %36, i32 %37, i32 0)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** @MAP_FAILED, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %169

44:                                               ; preds = %33
  %45 = load i64, i64* @xkb_ctx, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @XKB_KEYMAP_FORMAT_TEXT_V1, align 4
  %48 = load i32, i32* @XKB_KEYMAP_COMPILE_NO_FLAGS, align 4
  %49 = call i64 @xkb_keymap_new_from_string(i64 %45, i8* %46, i32 %47, i32 %48)
  store i64 %49, i64* @xkb_map, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @munmap(i8* %50, i64 %51)
  br label %111

53:                                               ; preds = %30
  store %struct.string_list* null, %struct.string_list** %7, align 8
  %54 = bitcast %struct.xkb_rule_names* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 24, i1 false)
  %55 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %53
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = call %struct.string_list* @string_split(i64* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.string_list* %68, %struct.string_list** %7, align 8
  %69 = load %struct.string_list*, %struct.string_list** %7, align 8
  %70 = icmp ne %struct.string_list* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %63
  %72 = load %struct.string_list*, %struct.string_list** %7, align 8
  %73 = getelementptr inbounds %struct.string_list, %struct.string_list* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 2
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.string_list*, %struct.string_list** %7, align 8
  %78 = getelementptr inbounds %struct.string_list, %struct.string_list* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %8, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %71, %63
  %85 = load %struct.string_list*, %struct.string_list** %7, align 8
  %86 = icmp ne %struct.string_list* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.string_list*, %struct.string_list** %7, align 8
  %89 = getelementptr inbounds %struct.string_list, %struct.string_list* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %90, 1
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.string_list*, %struct.string_list** %7, align 8
  %94 = getelementptr inbounds %struct.string_list, %struct.string_list* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %8, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  br label %100

100:                                              ; preds = %92, %87, %84
  br label %101

101:                                              ; preds = %100, %53
  %102 = load i64, i64* @xkb_ctx, align 8
  %103 = load i32, i32* @XKB_MAP_COMPILE_NO_FLAGS, align 4
  %104 = call i64 @xkb_keymap_new_from_names(i64 %102, %struct.xkb_rule_names* %8, i32 %103)
  store i64 %104, i64* @xkb_map, align 8
  %105 = load %struct.string_list*, %struct.string_list** %7, align 8
  %106 = icmp ne %struct.string_list* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.string_list*, %struct.string_list** %7, align 8
  %109 = call i32 @string_list_free(%struct.string_list* %108)
  br label %110

110:                                              ; preds = %107, %101
  br label %111

111:                                              ; preds = %110, %44
  br label %112

112:                                              ; preds = %111, %25
  %113 = load i64, i64* @xkb_map, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %168

115:                                              ; preds = %112
  %116 = load i32*, i32** @mod_map_idx, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** @mod_map_bit, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32* %119, i32** %11, align 8
  %120 = load i64, i64* @xkb_map, align 8
  %121 = call i32 @xkb_state_new(i64 %120)
  store i32 %121, i32* @xkb_state, align 4
  %122 = load i64, i64* @xkb_map, align 8
  %123 = load i32, i32* @XKB_MOD_NAME_CAPS, align 4
  %124 = call i32 @xkb_keymap_mod_get_index(i64 %122, i32 %123)
  %125 = load i32*, i32** %10, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %10, align 8
  %128 = load i32, i32* @RETROKMOD_CAPSLOCK, align 4
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %11, align 8
  %132 = load i64, i64* @xkb_map, align 8
  %133 = load i32, i32* @XKB_MOD_NAME_SHIFT, align 4
  %134 = call i32 @xkb_keymap_mod_get_index(i64 %132, i32 %133)
  %135 = load i32*, i32** %10, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %10, align 8
  %138 = load i32, i32* @RETROKMOD_SHIFT, align 4
  %139 = load i32*, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %11, align 8
  %142 = load i64, i64* @xkb_map, align 8
  %143 = load i32, i32* @XKB_MOD_NAME_CTRL, align 4
  %144 = call i32 @xkb_keymap_mod_get_index(i64 %142, i32 %143)
  %145 = load i32*, i32** %10, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32*, i32** %10, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %10, align 8
  %148 = load i32, i32* @RETROKMOD_CTRL, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %11, align 8
  %152 = load i64, i64* @xkb_map, align 8
  %153 = load i32, i32* @XKB_MOD_NAME_ALT, align 4
  %154 = call i32 @xkb_keymap_mod_get_index(i64 %152, i32 %153)
  %155 = load i32*, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %10, align 8
  %158 = load i32, i32* @RETROKMOD_ALT, align 4
  %159 = load i32*, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %11, align 8
  %162 = load i64, i64* @xkb_map, align 8
  %163 = load i32, i32* @XKB_MOD_NAME_LOGO, align 4
  %164 = call i32 @xkb_keymap_mod_get_index(i64 %162, i32 %163)
  %165 = load i32*, i32** %10, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* @RETROKMOD_META, align 4
  %167 = load i32*, i32** %11, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %115, %112
  store i32 0, i32* %3, align 4
  br label %171

169:                                              ; preds = %43, %24, %17
  %170 = call i32 (...) @free_xkb()
  store i32 -1, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @xkb_context_new(i32) #1

declare dso_local i64 @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @xkb_keymap_new_from_string(i64, i8*, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local %struct.string_list* @string_split(i64*, i8*) #1

declare dso_local i64 @xkb_keymap_new_from_names(i64, %struct.xkb_rule_names*, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @xkb_state_new(i64) #1

declare dso_local i32 @xkb_keymap_mod_get_index(i64, i32) #1

declare dso_local i32 @free_xkb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
