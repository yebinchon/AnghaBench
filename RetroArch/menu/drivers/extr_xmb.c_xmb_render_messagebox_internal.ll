; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_render_messagebox_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_render_messagebox_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__, i64 }
%struct.TYPE_17__ = type { double }
%struct.TYPE_14__ = type { i32* }
%struct.string_list = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@XMB_TEXTURE_DIALOG_SLICE = common dso_local global i64 0, align 8
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@XMB_TEXTURE_KEY_HOVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*)* @xmb_render_messagebox_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_render_messagebox_internal(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
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
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
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
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
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
  br label %246

52:                                               ; preds = %40
  %53 = load %struct.string_list*, %struct.string_list** %16, align 8
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = icmp eq %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %243

58:                                               ; preds = %52
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
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

88:                                               ; preds = %120, %73
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.string_list*, %struct.string_list** %16, align 8
  %91 = getelementptr inbounds %struct.string_list, %struct.string_list* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %88
  %95 = load %struct.string_list*, %struct.string_list** %16, align 8
  %96 = getelementptr inbounds %struct.string_list, %struct.string_list* %95, i32 0, i32 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %17, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = call i64 @utf8len(i8* %103)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %94
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %11, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = call i64 @strlen(i8* %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 @font_driver_get_message_width(%struct.TYPE_17__* %113, i8* %114, i32 %117, i32 1)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %109, %94
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %88

123:                                              ; preds = %88
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = call i32 @menu_display_blend_begin(%struct.TYPE_16__* %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %12, align 4
  %129 = sdiv i32 %128, 2
  %130 = sub nsw i32 %127, %129
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %140, %144
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %149, 2
  %151 = add nsw i32 %146, %150
  %152 = load float, float* %13, align 4
  %153 = load %struct.string_list*, %struct.string_list** %16, align 8
  %154 = getelementptr inbounds %struct.string_list, %struct.string_list* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sitofp i32 %155 to float
  %157 = fmul float %152, %156
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %160, 2
  %162 = sitofp i32 %161 to float
  %163 = fadd float %157, %162
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @XMB_TEXTURE_DIALOG_SLICE, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @menu_display_draw_texture_slice(%struct.TYPE_16__* %126, i32 %134, i64 %145, i32 256, i32 256, i32 %151, float %163, i32 %164, i32 %165, i32* null, i64 %168, double 1.000000e+00, i32 %175)
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %221, %123
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.string_list*, %struct.string_list** %16, align 8
  %180 = getelementptr inbounds %struct.string_list, %struct.string_list* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ult i32 %178, %181
  br i1 %182, label %183, label %224

183:                                              ; preds = %177
  %184 = load %struct.string_list*, %struct.string_list** %16, align 8
  %185 = getelementptr inbounds %struct.string_list, %struct.string_list* %184, i32 0, i32 1
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %19, align 8
  %192 = load i8*, i8** %19, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %220

194:                                              ; preds = %183
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = load i8*, i8** %19, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sitofp i32 %199 to double
  %201 = load i32, i32* %12, align 4
  %202 = sitofp i32 %201 to double
  %203 = fdiv double %202, 2.000000e+00
  %204 = fsub double %200, %203
  %205 = fptosi double %204 to i32
  %206 = load i32, i32* %10, align 4
  %207 = sitofp i32 %206 to double
  %208 = load i32, i32* %7, align 4
  %209 = uitofp i32 %208 to double
  %210 = fadd double %209, 7.500000e-01
  %211 = load float, float* %13, align 4
  %212 = fpext float %211 to double
  %213 = fmul double %210, %212
  %214 = fadd double %207, %213
  %215 = fptosi double %214 to i32
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %219 = call i32 @menu_display_draw_text(%struct.TYPE_17__* %197, i8* %198, i32 %205, i32 %215, i32 %216, i32 %217, i32 1145324799, i32 %218, float 1.000000e+00, i32 0, i32 0, i32 0)
  br label %220

220:                                              ; preds = %194, %183
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %7, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %177

224:                                              ; preds = %177
  %225 = call i64 (...) @menu_input_dialog_get_display_kb()
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %224
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @XMB_TEXTURE_KEY_HOVER, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %239 = call i32 (...) @menu_event_get_osk_grid()
  %240 = call i32 (...) @menu_event_get_osk_ptr()
  %241 = call i32 @menu_display_draw_keyboard(i32 %234, %struct.TYPE_17__* %237, %struct.TYPE_16__* %238, i32 %239, i32 %240, i32 -1)
  br label %242

242:                                              ; preds = %227, %224
  br label %243

243:                                              ; preds = %242, %57
  %244 = load %struct.string_list*, %struct.string_list** %16, align 8
  %245 = call i32 @string_list_free(%struct.string_list* %244)
  br label %246

246:                                              ; preds = %243, %51
  ret void
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i64 @menu_input_dialog_get_display_kb(...) #1

declare dso_local i64 @utf8len(i8*) #1

declare dso_local i32 @font_driver_get_message_width(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_16__*) #1

declare dso_local i32 @menu_display_draw_texture_slice(%struct.TYPE_16__*, i32, i64, i32, i32, i32, float, i32, i32, i32*, i64, double, i32) #1

declare dso_local i32 @menu_display_draw_text(%struct.TYPE_17__*, i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #1

declare dso_local i32 @menu_display_draw_keyboard(i32, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @menu_event_get_osk_grid(...) #1

declare dso_local i32 @menu_event_get_osk_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
