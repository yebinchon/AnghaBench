; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_render_messagebox_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_render_messagebox_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__, i64 }
%struct.TYPE_13__ = type { double }
%struct.TYPE_14__ = type { i32* }
%struct.string_list = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STRIPES_TEXTURE_DIALOG_SLICE = common dso_local global i64 0, align 8
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)* @stripes_render_messagebox_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_render_messagebox_internal(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.string_list*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @string_is_empty(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call %struct.string_list* @string_split(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi %struct.string_list* [ %31, %29 ], [ null, %32 ]
  store %struct.string_list* %34, %struct.string_list** %16, align 8
  %35 = load %struct.string_list*, %struct.string_list** %16, align 8
  %36 = icmp ne %struct.string_list* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40, %37, %33
  %46 = load %struct.string_list*, %struct.string_list** %16, align 8
  %47 = icmp ne %struct.string_list* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.string_list*, %struct.string_list** %16, align 8
  %50 = call i32 @string_list_free(%struct.string_list* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %236

52:                                               ; preds = %40
  %53 = load %struct.string_list*, %struct.string_list** %16, align 8
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = icmp eq %struct.TYPE_15__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %233

58:                                               ; preds = %52
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = fmul double %63, 1.200000e+00
  %65 = fptrunc double %64 to float
  store float %65, float* %13, align 4
  %66 = load i32, i32* %15, align 4
  %67 = udiv i32 %66, 2
  store i32 %67, i32* %8, align 4
  %68 = call i64 (...) @menu_input_dialog_get_display_kb()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* %15, align 4
  %72 = udiv i32 %71, 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %58
  %74 = load i32, i32* %14, align 4
  %75 = udiv i32 %74, 2
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = uitofp i32 %76 to float
  %78 = load %struct.string_list*, %struct.string_list** %16, align 8
  %79 = getelementptr inbounds %struct.string_list, %struct.string_list* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sitofp i32 %81 to float
  %83 = load float, float* %13, align 4
  %84 = fmul float %82, %83
  %85 = fdiv float %84, 2.000000e+00
  %86 = fsub float %77, %85
  %87 = fptosi float %86 to i32
  store i32 %87, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %119, %73
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.string_list*, %struct.string_list** %16, align 8
  %91 = getelementptr inbounds %struct.string_list, %struct.string_list* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %88
  %95 = load %struct.string_list*, %struct.string_list** %16, align 8
  %96 = getelementptr inbounds %struct.string_list, %struct.string_list* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %17, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = call i64 @utf8len(i8* %103)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %94
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %11, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = call i32 @font_driver_get_message_width(%struct.TYPE_13__* %113, i8* %114, i32 %116, i32 1)
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %109, %94
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %88

122:                                              ; preds = %88
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = call i32 @menu_display_blend_begin(%struct.TYPE_16__* %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sdiv i32 %127, 2
  %129 = sub nsw i32 %126, %128
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %129, %132
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %139, %143
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %148, 2
  %150 = add nsw i32 %145, %149
  %151 = load float, float* %13, align 4
  %152 = load %struct.string_list*, %struct.string_list** %16, align 8
  %153 = getelementptr inbounds %struct.string_list, %struct.string_list* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sitofp i32 %154 to float
  %156 = fmul float %151, %155
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %159, 2
  %161 = sitofp i32 %160 to float
  %162 = fadd float %156, %161
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @STRIPES_TEXTURE_DIALOG_SLICE, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @menu_display_draw_texture_slice(%struct.TYPE_16__* %125, i32 %133, i64 %144, i32 256, i32 256, i32 %150, float %162, i32 %163, i32 %164, i32* null, i64 %167, double 1.000000e+00, i32 %174)
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %220, %122
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.string_list*, %struct.string_list** %16, align 8
  %179 = getelementptr inbounds %struct.string_list, %struct.string_list* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ult i32 %177, %180
  br i1 %181, label %182, label %223

182:                                              ; preds = %176
  %183 = load %struct.string_list*, %struct.string_list** %16, align 8
  %184 = getelementptr inbounds %struct.string_list, %struct.string_list* %183, i32 0, i32 1
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %19, align 8
  %191 = load i8*, i8** %19, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %219

193:                                              ; preds = %182
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = load i8*, i8** %19, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sitofp i32 %198 to double
  %200 = load i32, i32* %12, align 4
  %201 = sitofp i32 %200 to double
  %202 = fdiv double %201, 2.000000e+00
  %203 = fsub double %199, %202
  %204 = fptosi double %203 to i32
  %205 = load i32, i32* %10, align 4
  %206 = sitofp i32 %205 to double
  %207 = load i32, i32* %7, align 4
  %208 = uitofp i32 %207 to double
  %209 = fadd double %208, 7.500000e-01
  %210 = load float, float* %13, align 4
  %211 = fpext float %210 to double
  %212 = fmul double %209, %211
  %213 = fadd double %206, %212
  %214 = fptosi double %213 to i32
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %218 = call i32 @menu_display_draw_text(%struct.TYPE_13__* %196, i8* %197, i32 %204, i32 %214, i32 %215, i32 %216, i32 1145324799, i32 %217, float 1.000000e+00, i32 0, i32 0, i32 0)
  br label %219

219:                                              ; preds = %193, %182
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %7, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %176

223:                                              ; preds = %176
  %224 = call i64 (...) @menu_input_dialog_get_display_kb()
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = call i32 (...) @menu_event_get_osk_grid()
  %230 = call i32 (...) @menu_event_get_osk_ptr()
  %231 = call i32 @stripes_render_keyboard(%struct.TYPE_17__* %227, %struct.TYPE_16__* %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %226, %223
  br label %233

233:                                              ; preds = %232, %57
  %234 = load %struct.string_list*, %struct.string_list** %16, align 8
  %235 = call i32 @string_list_free(%struct.string_list* %234)
  br label %236

236:                                              ; preds = %233, %51
  ret void
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i64 @menu_input_dialog_get_display_kb(...) #1

declare dso_local i64 @utf8len(i8*) #1

declare dso_local i32 @font_driver_get_message_width(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_16__*) #1

declare dso_local i32 @menu_display_draw_texture_slice(%struct.TYPE_16__*, i32, i64, i32, i32, i32, float, i32, i32, i32*, i64, double, i32) #1

declare dso_local i32 @menu_display_draw_text(%struct.TYPE_13__*, i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #1

declare dso_local i32 @stripes_render_keyboard(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @menu_event_get_osk_grid(...) #1

declare dso_local i32 @menu_event_get_osk_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
