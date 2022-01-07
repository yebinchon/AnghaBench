; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_create_upl_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_create_upl_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MAX_UPL_SIZE_BYTES = common dso_local global i32 0, align 4
@UPL_UBC_MSYNC = common dso_local global i32 0, align 4
@UPL_UBC_PAGEOUT = common dso_local global i32 0, align 4
@UPL_UBC_PAGEIN = common dso_local global i32 0, align 4
@UPL_RET_ONLY_DIRTY = common dso_local global i32 0, align 4
@UPL_COPYOUT_FROM = common dso_local global i32 0, align 4
@UPL_CLEAN_IN_PLACE = common dso_local global i32 0, align 4
@UPL_SET_INTERNAL = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@UPL_NOBLOCK = common dso_local global i32 0, align 4
@UPL_FOR_PAGEOUT = common dso_local global i32 0, align 4
@UPL_RET_ONLY_ABSENT = common dso_local global i32 0, align 4
@UPL_NO_SYNC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UPL_WILL_BE_DUMPED = common dso_local global i32 0, align 4
@UBC_FLAGS_NONE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubc_create_upl_kernel(%struct.vnode* %0, i32 %1, i32 %2, i32** %3, i32** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32** %3, i32*** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32**, i32*** %13, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32**, i32*** %13, align 8
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %20, %7
  %23 = load i32**, i32*** %12, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 4095
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %28, i64* %8, align 8
  br label %171

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @MAX_UPL_SIZE_BYTES, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %34, i64* %8, align 8
  br label %171

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @UPL_UBC_MSYNC, align 4
  %38 = load i32, i32* @UPL_UBC_PAGEOUT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UPL_UBC_PAGEIN, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %113

44:                                               ; preds = %35
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @UPL_UBC_MSYNC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32, i32* @UPL_RET_ONLY_DIRTY, align 4
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @UPL_COPYOUT_FROM, align 4
  %54 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UPL_SET_LITE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %112

62:                                               ; preds = %44
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @UPL_UBC_PAGEOUT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %62
  %68 = load i32, i32* @UPL_RET_ONLY_DIRTY, align 4
  %69 = load i32, i32* %14, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @UPL_RET_ONLY_DIRTY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* @UPL_NOBLOCK, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %67
  %80 = load i32, i32* @UPL_FOR_PAGEOUT, align 4
  %81 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @UPL_COPYOUT_FROM, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @UPL_SET_LITE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  br label %111

91:                                               ; preds = %62
  %92 = load i32, i32* @UPL_RET_ONLY_ABSENT, align 4
  %93 = load i32, i32* @UPL_NO_SYNC, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @UPL_SET_LITE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %91
  %107 = load i32, i32* @UPL_NOBLOCK, align 4
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %106, %91
  br label %111

111:                                              ; preds = %110, %79
  br label %112

112:                                              ; preds = %111, %49
  br label %141

113:                                              ; preds = %35
  %114 = load i32, i32* @UPL_FOR_PAGEOUT, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %14, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @UPL_WILL_BE_DUMPED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %113
  %123 = load i32, i32* @UPL_WILL_BE_DUMPED, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %14, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* @UPL_NO_SYNC, align 4
  %128 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %140

132:                                              ; preds = %113
  %133 = load i32, i32* @UPL_NO_SYNC, align 4
  %134 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %132, %122
  br label %141

141:                                              ; preds = %140, %112
  %142 = load %struct.vnode*, %struct.vnode** %9, align 8
  %143 = load i32, i32* @UBC_FLAGS_NONE, align 4
  %144 = call i64 @ubc_getobject(%struct.vnode* %142, i32 %143)
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %149, i64* %8, align 8
  br label %171

150:                                              ; preds = %141
  %151 = load i64, i64* %16, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32**, i32*** %12, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i64 @memory_object_upl_request(i64 %151, i32 %152, i32 %153, i32** %154, i32* null, i32* null, i32 %155, i32 %156)
  store i64 %157, i64* %17, align 8
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* @KERN_SUCCESS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %150
  %162 = load i32**, i32*** %13, align 8
  %163 = icmp ne i32** %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32**, i32*** %12, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = call i32* @UPL_GET_INTERNAL_PAGE_LIST(i32* %166)
  %168 = load i32**, i32*** %13, align 8
  store i32* %167, i32** %168, align 8
  br label %169

169:                                              ; preds = %164, %161, %150
  %170 = load i64, i64* %17, align 8
  store i64 %170, i64* %8, align 8
  br label %171

171:                                              ; preds = %169, %148, %33, %27
  %172 = load i64, i64* %8, align 8
  ret i64 %172
}

declare dso_local i64 @ubc_getobject(%struct.vnode*, i32) #1

declare dso_local i64 @memory_object_upl_request(i64, i32, i32, i32**, i32*, i32*, i32, i32) #1

declare dso_local i32* @UPL_GET_INTERNAL_PAGE_LIST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
