; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_messagebox.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_messagebox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_16__, i32*, %struct.TYPE_14__, i64 }
%struct.TYPE_18__ = type { float }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.string_list = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OZONE_ENTRIES_ICONS_TEXTURE_DIALOG_SLICE = common dso_local global i64 0, align 8
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_draw_messagebox(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
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
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
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
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = icmp ne %struct.TYPE_20__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40, %37, %33
  %47 = load %struct.string_list*, %struct.string_list** %16, align 8
  %48 = icmp ne %struct.string_list* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.string_list*, %struct.string_list** %16, align 8
  %51 = call i32 @string_list_free(%struct.string_list* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %233

53:                                               ; preds = %40
  %54 = load %struct.string_list*, %struct.string_list** %16, align 8
  %55 = getelementptr inbounds %struct.string_list, %struct.string_list* %54, i32 0, i32 1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = icmp eq %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %230

59:                                               ; preds = %53
  store float 2.500000e+01, float* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = udiv i32 %60, 2
  store i32 %61, i32* %8, align 4
  %62 = call i64 (...) @menu_input_dialog_get_display_kb()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = udiv i32 %65, 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %14, align 4
  %69 = udiv i32 %68, 2
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = uitofp i32 %70 to float
  %72 = load %struct.string_list*, %struct.string_list** %16, align 8
  %73 = getelementptr inbounds %struct.string_list, %struct.string_list* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sitofp i32 %75 to float
  %77 = load float, float* %13, align 4
  %78 = fmul float %76, %77
  %79 = fdiv float %78, 2.000000e+00
  %80 = fsub float %71, %79
  %81 = fptosi float %80 to i32
  store i32 %81, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %115, %67
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.string_list*, %struct.string_list** %16, align 8
  %85 = getelementptr inbounds %struct.string_list, %struct.string_list* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %82
  %89 = load %struct.string_list*, %struct.string_list** %16, align 8
  %90 = getelementptr inbounds %struct.string_list, %struct.string_list* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %17, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = call i64 @utf8len(i8* %97)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %88
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %11, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = trunc i64 %111 to i32
  %113 = call i32 @font_driver_get_message_width(i32 %108, i8* %109, i32 %112, i32 1)
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %103, %88
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %82

118:                                              ; preds = %82
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load float, float* %125, align 8
  %127 = call i32 @menu_display_set_alpha(i32 %122, float %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = call i32 @menu_display_blend_begin(%struct.TYPE_19__* %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %118
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sdiv i32 %137, 2
  %139 = sub nsw i32 %136, %138
  %140 = sub nsw i32 %139, 48
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 16
  %143 = sub nsw i32 %142, 48
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 96
  %146 = load float, float* %13, align 4
  %147 = load %struct.string_list*, %struct.string_list** %16, align 8
  %148 = getelementptr inbounds %struct.string_list, %struct.string_list* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sitofp i32 %149 to float
  %151 = fmul float %146, %150
  %152 = fadd float %151, 9.600000e+01
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @OZONE_ENTRIES_ICONS_TEXTURE_DIALOG_SLICE, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @menu_display_draw_texture_slice(%struct.TYPE_19__* %135, i32 %140, i32 %143, i32 256, i32 256, i32 %145, float %152, i32 %153, i32 %154, i32 %158, i32 16, double 1.000000e+00, i32 %164)
  br label %166

166:                                              ; preds = %134, %118
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %226, %166
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.string_list*, %struct.string_list** %16, align 8
  %170 = getelementptr inbounds %struct.string_list, %struct.string_list* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ult i32 %168, %171
  br i1 %172, label %173, label %229

173:                                              ; preds = %167
  %174 = load %struct.string_list*, %struct.string_list** %16, align 8
  %175 = getelementptr inbounds %struct.string_list, %struct.string_list* %174, i32 0, i32 1
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %19, align 8
  %182 = load i8*, i8** %19, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %225

184:                                              ; preds = %173
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %187 = load i8*, i8** %19, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sitofp i32 %188 to double
  %190 = load i32, i32* %12, align 4
  %191 = sitofp i32 %190 to double
  %192 = fdiv double %191, 2.000000e+00
  %193 = fsub double %189, %192
  %194 = fptosi double %193 to i32
  %195 = load i32, i32* %10, align 4
  %196 = sitofp i32 %195 to double
  %197 = load i32, i32* %7, align 4
  %198 = uitofp i32 %197 to double
  %199 = fadd double %198, 7.500000e-01
  %200 = load float, float* %13, align 4
  %201 = fpext float %200 to double
  %202 = fmul double %199, %201
  %203 = fadd double %196, %202
  %204 = fptosi double %203 to i32
  %205 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load float, float* %219, align 8
  %221 = fmul float %220, 2.550000e+02
  %222 = fptosi float %221 to i32
  %223 = call i32 @COLOR_TEXT_ALPHA(i32 %216, i32 %222)
  %224 = call i32 @ozone_draw_text(%struct.TYPE_19__* %185, %struct.TYPE_20__* %186, i8* %187, i32 %194, i32 %204, i32 %205, i32 %206, i32 %207, i32 %211, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %184, %173
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %7, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %167

229:                                              ; preds = %167
  br label %230

230:                                              ; preds = %229, %58
  %231 = load %struct.string_list*, %struct.string_list** %16, align 8
  %232 = call i32 @string_list_free(%struct.string_list* %231)
  br label %233

233:                                              ; preds = %230, %52
  ret void
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i64 @menu_input_dialog_get_display_kb(...) #1

declare dso_local i64 @utf8len(i8*) #1

declare dso_local i32 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @menu_display_set_alpha(i32, float) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_19__*) #1

declare dso_local i32 @menu_display_draw_texture_slice(%struct.TYPE_19__*, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, double, i32) #1

declare dso_local i32 @ozone_draw_text(%struct.TYPE_19__*, %struct.TYPE_20__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @COLOR_TEXT_ALPHA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
