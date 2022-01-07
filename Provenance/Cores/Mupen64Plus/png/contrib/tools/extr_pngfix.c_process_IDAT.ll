; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_process_IDAT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_process_IDAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32, %struct.TYPE_4__*, %struct.IDAT*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.IDAT = type { i64, i64, %struct.TYPE_3__*, i32, %struct.TYPE_3__*, %struct.IDAT_list* }
%struct.TYPE_3__ = type { i32* }
%struct.IDAT_list = type { i64, i64, i32* }

@READ_ERROR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@png_IDAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"extra uncompressed data\00", align 1
@LIBPNG_ERROR_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"IDAT: uncompressed data too small\00", align 1
@STATE_IDAT = common dso_local global i32 0, align 4
@ZLIB_ERROR_CODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"could not uncompress IDAT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @process_IDAT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_IDAT(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.IDAT_list*, align 8
  %5 = alloca %struct.IDAT*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 3
  %9 = load %struct.IDAT*, %struct.IDAT** %8, align 8
  %10 = icmp ne %struct.IDAT* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ false, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.file*, %struct.file** %3, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 3
  %22 = load %struct.IDAT*, %struct.IDAT** %21, align 8
  %23 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %22, i32 0, i32 5
  %24 = load %struct.IDAT_list*, %struct.IDAT_list** %23, align 8
  store %struct.IDAT_list* %24, %struct.IDAT_list** %4, align 8
  %25 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %26 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %29 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %16
  %33 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %34 = call %struct.IDAT_list* @IDAT_list_extend(%struct.IDAT_list* %33)
  store %struct.IDAT_list* %34, %struct.IDAT_list** %4, align 8
  %35 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %36 = icmp eq %struct.IDAT_list* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.file*, %struct.file** %3, align 8
  %39 = load i32, i32* @READ_ERROR_CODE, align 4
  %40 = call i32 @stop(%struct.file* %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %43 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %45 = load %struct.file*, %struct.file** %3, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 3
  %47 = load %struct.IDAT*, %struct.IDAT** %46, align 8
  %48 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %47, i32 0, i32 5
  store %struct.IDAT_list* %44, %struct.IDAT_list** %48, align 8
  br label %49

49:                                               ; preds = %41, %16
  %50 = load %struct.file*, %struct.file** %3, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %56 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %59 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %54, i32* %62, align 4
  %63 = load %struct.file*, %struct.file** %3, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @png_IDAT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %148

69:                                               ; preds = %49
  %70 = load %struct.file*, %struct.file** %3, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @setpos(%struct.TYPE_4__* %72)
  %74 = load %struct.file*, %struct.file** %3, align 8
  %75 = call i64 @zlib_check(%struct.file* %74, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %144

77:                                               ; preds = %69
  %78 = load %struct.file*, %struct.file** %3, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.file*, %struct.file** %3, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.file*, %struct.file** %3, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.file*, %struct.file** %3, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @uarb_cmp(i32 %80, i32 %83, i32 %88, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = load %struct.file*, %struct.file** %3, align 8
  %99 = load i64, i64* @png_IDAT, align 8
  %100 = call i32 @type_message(%struct.file* %98, i64 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %109

101:                                              ; preds = %77
  %102 = load i32, i32* %6, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.file*, %struct.file** %3, align 8
  %106 = load i32, i32* @LIBPNG_ERROR_CODE, align 4
  %107 = call i32 @stop(%struct.file* %105, i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %101
  br label %109

109:                                              ; preds = %108, %97
  %110 = load %struct.file*, %struct.file** %3, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i32 @setpos(%struct.TYPE_4__* %112)
  %114 = load %struct.file*, %struct.file** %3, align 8
  %115 = getelementptr inbounds %struct.file, %struct.file* %114, i32 0, i32 3
  %116 = load %struct.IDAT*, %struct.IDAT** %115, align 8
  store %struct.IDAT* %116, %struct.IDAT** %5, align 8
  %117 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  %118 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %117, i32 0, i32 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  %121 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %120, i32 0, i32 2
  store %struct.TYPE_3__* %119, %struct.TYPE_3__** %121, align 8
  %122 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  %123 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %122, i32 0, i32 2
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  %130 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  %132 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  %134 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.IDAT*, %struct.IDAT** %5, align 8
  %136 = call i32 @rechunk_length(%struct.IDAT* %135, i32 1)
  %137 = load %struct.file*, %struct.file** %3, align 8
  %138 = getelementptr inbounds %struct.file, %struct.file* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* @STATE_IDAT, align 4
  %142 = load %struct.file*, %struct.file** %3, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  store i32 1, i32* %2, align 4
  br label %148

144:                                              ; preds = %69
  %145 = load %struct.file*, %struct.file** %3, align 8
  %146 = load i32, i32* @ZLIB_ERROR_CODE, align 4
  %147 = call i32 @stop(%struct.file* %145, i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %68, %109, %144
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.IDAT_list* @IDAT_list_extend(%struct.IDAT_list*) #1

declare dso_local i32 @stop(%struct.file*, i32, i8*) #1

declare dso_local i32 @setpos(%struct.TYPE_4__*) #1

declare dso_local i64 @zlib_check(%struct.file*, i32) #1

declare dso_local i32 @uarb_cmp(i32, i32, i32, i32) #1

declare dso_local i32 @type_message(%struct.file*, i64, i8*) #1

declare dso_local i32 @rechunk_length(%struct.IDAT*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
