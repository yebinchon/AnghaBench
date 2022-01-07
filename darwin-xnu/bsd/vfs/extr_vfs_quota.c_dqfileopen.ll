; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqfileopen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqfileopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dqfilehdr = type { i64, i64, i64, i64, i64, i64 }
%struct.vfs_context = type { i32, i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@quotamagic = common dso_local global i32* null, align 8
@QF_VERSION = common dso_local global i32 0, align 4
@MAX_DQ_TIME = common dso_local global i32 0, align 4
@MAX_IQ_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dqfileopen(%struct.quotafile* %0, i32 %1) #0 {
  %3 = alloca %struct.quotafile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dqfilehdr, align 8
  %6 = alloca %struct.vfs_context, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.quotafile* %0, %struct.quotafile** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 @UIO_SIZEOF(i32 1)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = call i32 (...) @current_thread()
  %17 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %19 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %23 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vnode_size(i32 %24, i32* %7, %struct.vfs_context* %6)
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %130

28:                                               ; preds = %2
  %29 = load i32, i32* @UIO_SYSSPACE, align 4
  %30 = load i32, i32* @UIO_READ, align 4
  %31 = getelementptr inbounds i8, i8* %15, i64 0
  %32 = trunc i64 %13 to i32
  %33 = call i32 @uio_createwithbuffer(i32 1, i32 0, i32 %29, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @CAST_USER_ADDR_T(%struct.dqfilehdr* %5)
  %36 = call i32 @uio_addiov(i32 %34, i32 %35, i32 48)
  %37 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %38 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @VNOP_READ(i32 %39, i32 %40, i32 0, %struct.vfs_context* %6)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %130

45:                                               ; preds = %28
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @uio_resid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %9, align 4
  br label %130

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @OSSwapBigToHostInt32(i64 %54)
  %56 = load i32*, i32** @quotamagic, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %55, %60
  br i1 %61, label %83, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @OSSwapBigToHostInt32(i64 %64)
  %66 = load i32, i32* @QF_VERSION, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @OSSwapBigToHostInt32(i64 %70)
  %72 = call i32 @powerof2(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @OSSwapBigToHostInt32(i64 %76)
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 4
  %82 = icmp ugt i64 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %74, %68, %62, %52
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %9, align 4
  br label %130

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @OSSwapBigToHostInt32(i64 %91)
  %93 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %94 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %99

95:                                               ; preds = %85
  %96 = load i32, i32* @MAX_DQ_TIME, align 4
  %97 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %98 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %89
  %100 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @OSSwapBigToHostInt32(i64 %105)
  %107 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %108 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %113

109:                                              ; preds = %99
  %110 = load i32, i32* @MAX_IQ_TIME, align 4
  %111 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %112 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @OSSwapBigToHostInt32(i64 %115)
  %117 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %118 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.dqfilehdr, %struct.dqfilehdr* %5, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @OSSwapBigToHostInt32(i64 %120)
  %122 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %123 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %125 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dqhashshift(i32 %126)
  %128 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %129 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %113, %83, %49, %44, %27
  %131 = load i32, i32* %9, align 4
  %132 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %132)
  ret i32 %131
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @vnode_size(i32, i32*, %struct.vfs_context*) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(%struct.dqfilehdr*) #1

declare dso_local i32 @VNOP_READ(i32, i32, i32, %struct.vfs_context*) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @OSSwapBigToHostInt32(i64) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @dqhashshift(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
