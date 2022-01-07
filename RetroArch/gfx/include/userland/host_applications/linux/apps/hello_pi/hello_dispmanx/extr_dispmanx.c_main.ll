; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_dispmanx/extr_dispmanx.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_dispmanx/extr_dispmanx.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@VC_IMAGE_RGB565 = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@DISPMANX_FLAGS_ALPHA_FROM_SOURCE = common dso_local global i32 0, align 4
@DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS = common dso_local global i32 0, align 4
@gRectVars = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"Open display[%i]...\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Display is %d x %d\0A\00", align 1
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@VC_IMAGE_ROT0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Sleeping for 10 seconds...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %13 = load i32, i32* @VC_IMAGE_RGB565, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @WIDTH, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @HEIGHT, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %16, 2
  %18 = call i32 @ALIGN_UP(i32 %17, i32 32)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ALIGN_UP(i32 %19, i32 16)
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %22 = load i32, i32* @DISPMANX_FLAGS_ALPHA_FROM_SOURCE, align 4
  %23 = load i32, i32* @DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 120, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 0, i32* %26, align 4
  store %struct.TYPE_7__* @gRectVars, %struct.TYPE_7__** %2, align 8
  %27 = call i32 (...) @bcm_host_init()
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @vc_dispmanx_display_open(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = call i32 @vc_dispmanx_display_get_info(i32 %36, %struct.TYPE_8__* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i32 @calloc(i32 1, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @FillRect(i32 %63, i32 %66, i32 %67, i32 %68, i32 0, i32 0, i32 %69, i32 %70, i32 65535)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @FillRect(i32 %72, i32 %75, i32 %76, i32 %77, i32 0, i32 0, i32 %78, i32 %79, i32 63488)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 40
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 40
  %91 = call i32 @FillRect(i32 %81, i32 %84, i32 %85, i32 %86, i32 20, i32 20, i32 %88, i32 %90, i32 2016)
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 80
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, 80
  %102 = call i32 @FillRect(i32 %92, i32 %95, i32 %96, i32 %97, i32 40, i32 40, i32 %99, i32 %101, i32 31)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 6
  %108 = call i32 @vc_dispmanx_resource_create(i32 %103, i32 %104, i32 %105, i32* %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @vc_dispmanx_rect_set(i32* %6, i32 0, i32 0, i32 %115, i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @vc_dispmanx_resource_write_data(i32 %120, i32 %121, i32 %122, i32 %125, i32* %6)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = call i8* @vc_dispmanx_update_start(i32 10)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @assert(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = shl i32 %139, 16
  %141 = load i32, i32* %9, align 4
  %142 = shl i32 %141, 16
  %143 = call i32 @vc_dispmanx_rect_set(i32* %5, i32 0, i32 0, i32 %140, i32 %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sdiv i32 %149, 2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sdiv i32 %156, 2
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @vc_dispmanx_rect_set(i32* %6, i32 %150, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %171 = load i32, i32* @VC_IMAGE_ROT0, align 4
  %172 = call i32 @vc_dispmanx_element_add(i32 %163, i32 %166, i32 2000, i32* %6, i32 %169, i32* %5, i32 %170, %struct.TYPE_6__* %12, i32* null, i32 %171)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @vc_dispmanx_update_submit_sync(i32 %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp eq i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %184 = call i32 @sleep(i32 10)
  %185 = call i8* @vc_dispmanx_update_start(i32 10)
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @assert(i32 %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @vc_dispmanx_element_remove(i32 %195, i32 %198)
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = icmp eq i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @vc_dispmanx_update_submit_sync(i32 %206)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp eq i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @vc_dispmanx_resource_delete(i32 %214)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = icmp eq i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @vc_dispmanx_display_close(i32 %222)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp eq i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  ret i32 0
}

declare dso_local i32 @ALIGN_UP(i32, i32) #1

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vc_dispmanx_display_open(i32) #1

declare dso_local i32 @vc_dispmanx_display_get_info(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @FillRect(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_resource_create(i32, i32, i32, i32*) #1

declare dso_local i32 @vc_dispmanx_rect_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_resource_write_data(i32, i32, i32, i32, i32*) #1

declare dso_local i8* @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @vc_dispmanx_element_add(i32, i32, i32, i32*, i32, i32*, i32, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @vc_dispmanx_element_remove(i32, i32) #1

declare dso_local i32 @vc_dispmanx_resource_delete(i32) #1

declare dso_local i32 @vc_dispmanx_display_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
