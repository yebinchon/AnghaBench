; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadTexObjPreloaded.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadTexObjPreloaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }
%struct.__gx_tlutregion = type { i32 }
%struct.__gx_texobj = type { i32, i32, i32, i32, i64, i32 }
%struct.__gx_texregion = type { i32, i32 }

@_gxtexmode0ids = common dso_local global i32* null, align 8
@_gxtexmode1ids = common dso_local global i32* null, align 8
@_gxteximg0ids = common dso_local global i32* null, align 8
@_gxteximg3ids = common dso_local global i32* null, align 8
@_gxteximg1ids = common dso_local global i32* null, align 8
@_gxteximg2ids = common dso_local global i32* null, align 8
@_gxtextlutids = common dso_local global i32* null, align 8
@__gx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_LoadTexObjPreloaded(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.__gx_tlutregion*, align 8
  %9 = alloca %struct.__gx_texobj*, align 8
  %10 = alloca %struct.__gx_texregion*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.__gx_tlutregion* null, %struct.__gx_tlutregion** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.__gx_texobj*
  store %struct.__gx_texobj* %12, %struct.__gx_texobj** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.__gx_texregion*
  store %struct.__gx_texregion* %14, %struct.__gx_texregion** %10, align 8
  %15 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %16 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 16777215
  %19 = load i32*, i32** @_gxtexmode0ids, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @_SHIFTL(i32 %22, i32 24, i32 8)
  %24 = or i32 %18, %23
  %25 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %26 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %28 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 16777215
  %31 = load i32*, i32** @_gxtexmode1ids, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_SHIFTL(i32 %34, i32 24, i32 8)
  %36 = or i32 %30, %35
  %37 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %38 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %40 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 16777215
  %43 = load i32*, i32** @_gxteximg0ids, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @_SHIFTL(i32 %46, i32 24, i32 8)
  %48 = or i32 %42, %47
  %49 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %50 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %52 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 16777215
  %55 = load i32*, i32** @_gxteximg3ids, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @_SHIFTL(i32 %58, i32 24, i32 8)
  %60 = or i32 %54, %59
  %61 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %62 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.__gx_texregion*, %struct.__gx_texregion** %10, align 8
  %64 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 16777215
  %67 = load i32*, i32** @_gxteximg1ids, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @_SHIFTL(i32 %70, i32 24, i32 8)
  %72 = or i32 %66, %71
  %73 = load %struct.__gx_texregion*, %struct.__gx_texregion** %10, align 8
  %74 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.__gx_texregion*, %struct.__gx_texregion** %10, align 8
  %76 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 16777215
  %79 = load i32*, i32** @_gxteximg2ids, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @_SHIFTL(i32 %82, i32 24, i32 8)
  %84 = or i32 %78, %83
  %85 = load %struct.__gx_texregion*, %struct.__gx_texregion** %10, align 8
  %86 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %88 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @GX_LOAD_BP_REG(i32 %89)
  %91 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %92 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @GX_LOAD_BP_REG(i32 %93)
  %95 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %96 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @GX_LOAD_BP_REG(i32 %97)
  %99 = load %struct.__gx_texregion*, %struct.__gx_texregion** %10, align 8
  %100 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @GX_LOAD_BP_REG(i32 %101)
  %103 = load %struct.__gx_texregion*, %struct.__gx_texregion** %10, align 8
  %104 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @GX_LOAD_BP_REG(i32 %105)
  %107 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %108 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @GX_LOAD_BP_REG(i32 %109)
  %111 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %112 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %7, align 8
  %114 = load i64, i64* %7, align 8
  %115 = and i64 %114, 2
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %141, label %117

117:                                              ; preds = %3
  br i1 true, label %118, label %124

118:                                              ; preds = %117
  %119 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %120 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @tlut_regionCB(i32 %121)
  %123 = inttoptr i64 %122 to %struct.__gx_tlutregion*
  store %struct.__gx_tlutregion* %123, %struct.__gx_tlutregion** %8, align 8
  br label %124

124:                                              ; preds = %118, %117
  %125 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %8, align 8
  %126 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 16777215
  %129 = load i32*, i32** @_gxtextlutids, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @_SHIFTL(i32 %132, i32 24, i32 8)
  %134 = or i32 %128, %133
  %135 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %8, align 8
  %136 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %8, align 8
  %138 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @GX_LOAD_BP_REG(i32 %139)
  br label %141

141:                                              ; preds = %124, %3
  %142 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %143 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 %144, i32* %149, align 4
  %150 = load %struct.__gx_texobj*, %struct.__gx_texobj** %9, align 8
  %151 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 %152, i32* %157, align 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, 1
  store i32 %161, i32* %159, align 8
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

declare dso_local i64 @tlut_regionCB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
