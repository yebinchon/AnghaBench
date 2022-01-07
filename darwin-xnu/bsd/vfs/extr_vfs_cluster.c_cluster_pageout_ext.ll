; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_pageout_ext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_pageout_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.clios = type { i32 }

@CL_PAGEOUT = common dso_local global i32 0, align 4
@CL_THROTTLE = common dso_local global i32 0, align 4
@UPL_IOSYNC = common dso_local global i32 0, align 4
@CL_ASYNC = common dso_local global i32 0, align 4
@UPL_NOCOMMIT = common dso_local global i32 0, align 4
@CL_COMMIT = common dso_local global i32 0, align 4
@UPL_KEEPCACHED = common dso_local global i32 0, align 4
@CL_KEEPCACHED = common dso_local global i32 0, align 4
@UPL_PAGING_ENCRYPTED = common dso_local global i32 0, align 4
@CL_ENCRYPTED = common dso_local global i32 0, align 4
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cluster_pageout_ext(%struct.TYPE_6__* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 (i32, i8*)* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
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
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 (i32, i8*)* %7, i32 (i32, i8*)** %18, align 8
  store i8* %8, i8** %19, align 8
  %24 = load i32, i32* @CL_PAGEOUT, align 4
  %25 = load i32, i32* @CL_THROTTLE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %23, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @UPL_IOSYNC, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %9
  %32 = load i32, i32* @CL_ASYNC, align 4
  %33 = load i32, i32* %23, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %23, align 4
  br label %35

35:                                               ; preds = %31, %9
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @UPL_NOCOMMIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @CL_COMMIT, align 4
  %42 = load i32, i32* %23, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %23, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @UPL_KEEPCACHED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @CL_KEEPCACHED, align 4
  %51 = load i32, i32* %23, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %23, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @UPL_PAGING_ENCRYPTED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @CL_ENCRYPTED, align 4
  %60 = load i32, i32* %23, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %23, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* @DBG_FSRW, align 4
  %64 = call i32 @FSDBG_CODE(i32 %63, i32 52)
  %65 = load i32, i32* @DBG_FUNC_NONE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %23, align 4
  %71 = call i32 @KERNEL_DEBUG(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 0)
  %72 = load i32, i32* %15, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %10, align 4
  br label %177

76:                                               ; preds = %62
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MNT_RDONLY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* @CL_COMMIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* %13, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %95 = call i32 @ubc_upl_abort_range(i32 %91, i64 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* @EROFS, align 4
  store i32 %97, i32* %10, align 4
  br label %177

98:                                               ; preds = %76
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @PAGE_MASK_64, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @PAGE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110, %105, %101, %98
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* @CL_COMMIT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* %12, align 4
  %122 = load i64, i64* %13, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %125 = call i32 @ubc_upl_abort_range(i32 %121, i64 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %115
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %10, align 4
  br label %177

128:                                              ; preds = %110
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %20, align 4
  br label %139

137:                                              ; preds = %128
  %138 = load i32, i32* %22, align 4
  store i32 %138, i32* %20, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = sub nsw i32 %141, 1
  %143 = add nsw i32 %140, %142
  %144 = load i32, i32* @PAGE_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %143, %145
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %21, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %167

150:                                              ; preds = %139
  %151 = load i32, i32* %23, align 4
  %152 = load i32, i32* @CL_COMMIT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  %157 = load i64, i64* %13, align 8
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %157, %159
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %21, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %165 = call i32 @ubc_upl_abort_range(i32 %156, i64 %160, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %155, %150
  br label %167

167:                                              ; preds = %166, %139
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %169 = load i32, i32* %12, align 4
  %170 = load i64, i64* %13, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* %23, align 4
  %174 = load i32 (i32, i8*)*, i32 (i32, i8*)** %18, align 8
  %175 = load i8*, i8** %19, align 8
  %176 = call i32 @cluster_io(%struct.TYPE_6__* %168, i32 %169, i64 %170, i32 %171, i32 %172, i32 %173, i32 0, %struct.clios* null, i32 (i32, i8*)* %174, i8* %175)
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %167, %126, %96, %74
  %178 = load i32, i32* %10, align 4
  ret i32 %178
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @ubc_upl_abort_range(i32, i64, i32, i32) #1

declare dso_local i32 @cluster_io(%struct.TYPE_6__*, i32, i64, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
