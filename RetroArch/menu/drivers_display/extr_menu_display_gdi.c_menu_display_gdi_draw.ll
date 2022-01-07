; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gdi.c_menu_display_gdi_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gdi.c_menu_display_gdi_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.gdi_texture = type { i32, i32, i8*, i32, i8* }
%struct.TYPE_16__ = type { i64, i8*, i64, i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@AC_SRC_ALPHA = common dso_local global i32 0, align 4
@AC_SRC_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*)* @menu_display_gdi_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_gdi_draw(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.gdi_texture*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store %struct.gdi_texture* null, %struct.gdi_texture** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %31, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28, %23, %18, %15, %2
  br label %217

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.gdi_texture*
  store %struct.gdi_texture* %43, %struct.gdi_texture** %5, align 8
  %44 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %45 = icmp ne %struct.gdi_texture* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %48 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sle i32 %49, 1
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %53 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46, %39
  br label %217

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 32, i32* %59, align 8
  %60 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %61 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %66 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 0, %67
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  store i32 4, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 6
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @BI_RGB, align 4
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %217

84:                                               ; preds = %57
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @CreateCompatibleDC(i32 %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %98 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %106 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @SelectObject(i64 %104, i8* %107)
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %111 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %156

112:                                              ; preds = %96
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @CreateCompatibleBitmap(i32 %115, i32 %118, i32 %121)
  %123 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %124 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %129 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @SelectObject(i64 %127, i8* %130)
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %134 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %145 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %148 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %151 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @DIB_RGB_COLORS, align 4
  %154 = load i32, i32* @SRCCOPY, align 4
  %155 = call i32 @StretchDIBits(i64 %137, i32 0, i32 0, i32 %140, i32 %143, i32 0, i32 0, i32 %146, i32 %149, i32 %152, %struct.TYPE_18__* %7, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %112, %101
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @SelectObject(i64 %159, i8* %162)
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %175, %178
  %180 = sext i32 %179 to i64
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = trunc i64 %184 to i32
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @SRCCOPY, align 4
  %202 = call i32 @StretchBlt(i64 %169, i64 %172, i32 %185, i32 %188, i32 %191, i64 %194, i32 0, i32 0, i32 %197, i32 %200, i32 %201)
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = call i64 @SelectObject(i64 %205, i8* %208)
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.gdi_texture*, %struct.gdi_texture** %5, align 8
  %214 = getelementptr inbounds %struct.gdi_texture, %struct.gdi_texture* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = call i64 @SelectObject(i64 %212, i8* %215)
  br label %217

217:                                              ; preds = %38, %56, %156, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @CreateCompatibleDC(i32) #2

declare dso_local i64 @SelectObject(i64, i8*) #2

declare dso_local i8* @CreateCompatibleBitmap(i32, i32, i32) #2

declare dso_local i32 @StretchDIBits(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @StretchBlt(i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
