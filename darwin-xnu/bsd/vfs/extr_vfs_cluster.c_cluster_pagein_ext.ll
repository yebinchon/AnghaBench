; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_pagein_ext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_pagein_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clios = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"cluster_pagein: NULL upl passed in\00", align 1
@UPL_IOSYNC = common dso_local global i32 0, align 4
@CL_ASYNC = common dso_local global i32 0, align 4
@UPL_NOCOMMIT = common dso_local global i32 0, align 4
@CL_COMMIT = common dso_local global i32 0, align 4
@UPL_IOSTREAMING = common dso_local global i32 0, align 4
@CL_IOSTREAMING = common dso_local global i32 0, align 4
@UPL_PAGING_ENCRYPTED = common dso_local global i32 0, align 4
@CL_ENCRYPTED = common dso_local global i32 0, align 4
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@UPL_ABORT_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CL_READ = common dso_local global i32 0, align 4
@CL_PAGEIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cluster_pagein_ext(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 (i32, i8*)* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32 (i32, i8*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 (i32, i8*)* %7, i32 (i32, i8*)** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %9
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %9
  %31 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @UPL_IOSYNC, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @CL_ASYNC, align 4
  %39 = load i32, i32* %24, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %24, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @UPL_NOCOMMIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @CL_COMMIT, align 4
  %48 = load i32, i32* %24, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %24, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @UPL_IOSTREAMING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @CL_IOSTREAMING, align 4
  %57 = load i32, i32* %24, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %24, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @UPL_PAGING_ENCRYPTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @CL_ENCRYPTED, align 4
  %66 = load i32, i32* %24, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %24, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @DBG_FSRW, align 4
  %70 = call i32 @FSDBG_CODE(i32 %69, i32 56)
  %71 = load i32, i32* @DBG_FUNC_NONE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @KERNEL_DEBUG(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 0)
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %99, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @PAGE_MASK_64, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @PAGE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @PAGE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94, %89, %84, %80, %68
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* @CL_COMMIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %109 = load i32, i32* @UPL_ABORT_ERROR, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @ubc_upl_abort_range(i32* %105, i32 %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %104, %99
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %10, align 4
  br label %168

114:                                              ; preds = %94
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %22, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %20, align 4
  br label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %22, align 4
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* @PAGE_SIZE, align 4
  %128 = sub nsw i32 %127, 1
  %129 = add nsw i32 %126, %128
  %130 = load i32, i32* @PAGE_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %125
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* @CL_COMMIT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %21, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %150 = load i32, i32* @UPL_ABORT_ERROR, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @ubc_upl_abort_range(i32* %142, i32 %145, i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %141, %136, %125
  %154 = load i32, i32* %11, align 4
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* @CL_READ, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @CL_PAGEIN, align 4
  %163 = or i32 %161, %162
  %164 = load i32 (i32, i8*)*, i32 (i32, i8*)** %18, align 8
  %165 = load i8*, i8** %19, align 8
  %166 = call i32 @cluster_io(i32 %154, i32* %155, i32 %156, i32 %157, i32 %158, i32 %163, i32 0, %struct.clios* null, i32 (i32, i8*)* %164, i8* %165)
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %23, align 4
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %153, %112
  %169 = load i32, i32* %10, align 4
  ret i32 %169
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @ubc_upl_abort_range(i32*, i32, i32, i32) #1

declare dso_local i32 @cluster_io(i32, i32*, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
