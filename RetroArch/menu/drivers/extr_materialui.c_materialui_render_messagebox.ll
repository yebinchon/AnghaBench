; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_messagebox.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_messagebox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { double, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.string_list = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i8*)* @materialui_render_messagebox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_messagebox(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.string_list*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  store %struct.string_list* null, %struct.string_list** %16, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %4
  br label %225

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = call %struct.string_list* @string_split(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %38, %struct.string_list** %16, align 8
  %39 = load %struct.string_list*, %struct.string_list** %16, align 8
  %40 = icmp ne %struct.string_list* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.string_list*, %struct.string_list** %16, align 8
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp eq %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  br label %225

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = udiv i32 %48, 2
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.string_list*, %struct.string_list** %16, align 8
  %52 = getelementptr inbounds %struct.string_list, %struct.string_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 2
  %61 = mul nsw i32 %54, %60
  %62 = sub nsw i32 %50, %61
  store i32 %62, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %101, %47
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.string_list*, %struct.string_list** %16, align 8
  %66 = getelementptr inbounds %struct.string_list, %struct.string_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %63
  %70 = load %struct.string_list*, %struct.string_list** %16, align 8
  %71 = getelementptr inbounds %struct.string_list, %struct.string_list* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %17, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @string_is_empty(i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %69
  %82 = load i8*, i8** %17, align 8
  %83 = call i64 @utf8len(i8* %82)
  store i64 %83, i64* %18, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load i64, i64* %18, align 8
  store i64 %88, i64* %13, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %17, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 @font_driver_get_message_width(i32 %93, i8* %94, i32 %97, i32 1)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %87, %81
  br label %100

100:                                              ; preds = %99, %69
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %63

104:                                              ; preds = %63
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sitofp i32 %106 to double
  %108 = load i32, i32* %12, align 4
  %109 = sitofp i32 %108 to double
  %110 = fdiv double %109, 2.000000e+00
  %111 = fsub double %107, %110
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load double, double* %113, align 8
  %115 = fmul double %114, 2.000000e+00
  %116 = fsub double %111, %115
  %117 = fptosi double %116 to i32
  %118 = load i32, i32* %11, align 4
  %119 = sitofp i32 %118 to double
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sitofp i32 %124 to double
  %126 = fdiv double %125, 2.000000e+00
  %127 = fsub double %119, %126
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load double, double* %129, align 8
  %131 = fmul double %130, 2.000000e+00
  %132 = fsub double %127, %131
  %133 = fptosi double %132 to i32
  %134 = load i32, i32* %12, align 4
  %135 = sitofp i32 %134 to double
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = fmul double %138, 4.000000e+00
  %140 = fadd double %135, %139
  %141 = fptosi double %140 to i32
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.string_list*, %struct.string_list** %16, align 8
  %148 = getelementptr inbounds %struct.string_list, %struct.string_list* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %146, %149
  %151 = sitofp i32 %150 to double
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load double, double* %153, align 8
  %155 = fmul double %154, 4.000000e+00
  %156 = fadd double %151, %155
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @menu_display_draw_quad(%struct.TYPE_14__* %105, i32 %117, i32 %133, i32 %141, double %156, i32 %157, i32 %158, i32 %162)
  store i32 0, i32* %9, align 4
  br label %164

164:                                              ; preds = %221, %104
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.string_list*, %struct.string_list** %16, align 8
  %167 = getelementptr inbounds %struct.string_list, %struct.string_list* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ult i32 %165, %168
  br i1 %169, label %170, label %224

170:                                              ; preds = %164
  %171 = load %struct.string_list*, %struct.string_list** %16, align 8
  %172 = getelementptr inbounds %struct.string_list, %struct.string_list* %171, i32 0, i32 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %19, align 8
  %179 = load i8*, i8** %19, align 8
  %180 = call i32 @string_is_empty(i8* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %220, label %182

182:                                              ; preds = %170
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %19, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sitofp i32 %189 to double
  %191 = load i32, i32* %12, align 4
  %192 = sitofp i32 %191 to double
  %193 = fdiv double %192, 2.000000e+00
  %194 = fsub double %190, %193
  %195 = fptosi double %194 to i32
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = mul i32 %197, %202
  %204 = add i32 %196, %203
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %209, 3
  %211 = add i32 %204, %210
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %219 = call i32 @menu_display_draw_text(i32 %187, i8* %188, i32 %195, i32 %211, i32 %212, i32 %213, i32 %217, i32 %218, float 1.000000e+00, i32 0, i32 0, i32 1)
  br label %220

220:                                              ; preds = %182, %170
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %9, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %164

224:                                              ; preds = %164
  br label %225

225:                                              ; preds = %224, %46, %35
  %226 = load %struct.string_list*, %struct.string_list** %16, align 8
  %227 = icmp ne %struct.string_list* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load %struct.string_list*, %struct.string_list** %16, align 8
  %230 = call i32 @string_list_free(%struct.string_list* %229)
  br label %231

231:                                              ; preds = %228, %225
  ret void
}

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @utf8len(i8*) #1

declare dso_local i32 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_14__*, i32, i32, i32, double, i32, i32, i32) #1

declare dso_local i32 @menu_display_draw_text(i32, i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
