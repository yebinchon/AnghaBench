; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqsync_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqsync_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.dquot = type { i64, i32, %struct.dqblk, %struct.TYPE_2__*, i32 }
%struct.dqblk = type { i64*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, %struct.vnode* }
%struct.vfs_context = type { i32, i32 }

@DQ_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dqsync: NULL dq_qfile\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"dqsync: NULL qf_vp\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dqsync_locked(%struct.dquot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.vfs_context, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.dqblk, align 8
  %7 = alloca %struct.dqblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  %13 = call i32 @UIO_SIZEOF(i32 1)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.dquot*, %struct.dquot** %3, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @DQ_MOD, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.dquot*, %struct.dquot** %3, align 8
  %25 = getelementptr inbounds %struct.dquot, %struct.dquot* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %144

28:                                               ; preds = %1
  %29 = load %struct.dquot*, %struct.dquot** %3, align 8
  %30 = getelementptr inbounds %struct.dquot, %struct.dquot* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp eq %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.dquot*, %struct.dquot** %3, align 8
  %37 = getelementptr inbounds %struct.dquot, %struct.dquot* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.vnode*, %struct.vnode** %39, align 8
  store %struct.vnode* %40, %struct.vnode** %5, align 8
  %41 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %42 = icmp eq %struct.vnode* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %35
  %46 = load %struct.dquot*, %struct.dquot** %3, align 8
  %47 = getelementptr inbounds %struct.dquot, %struct.dquot* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dqoffset(i32 %48)
  %50 = load i32, i32* @UIO_SYSSPACE, align 4
  %51 = load i32, i32* @UIO_WRITE, align 4
  %52 = getelementptr inbounds i8, i8* %16, i64 0
  %53 = trunc i64 %14 to i32
  %54 = call i32 @uio_createwithbuffer(i32 1, i32 %49, i32 %50, i32 %51, i8* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @CAST_USER_ADDR_T(%struct.dqblk* %6)
  %57 = call i32 @uio_addiov(i32 %55, i32 %56, i32 80)
  %58 = call i32 (...) @current_thread()
  %59 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %4, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.dquot*, %struct.dquot** %3, align 8
  %61 = getelementptr inbounds %struct.dquot, %struct.dquot* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %4, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.dquot*, %struct.dquot** %3, align 8
  %67 = getelementptr inbounds %struct.dquot, %struct.dquot* %66, i32 0, i32 2
  store %struct.dqblk* %67, %struct.dqblk** %7, align 8
  %68 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %69 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %68, i32 0, i32 9
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @OSSwapHostToBigInt64(i8* %70)
  %72 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 9
  store i8* %71, i8** %72, align 8
  %73 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %74 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %73, i32 0, i32 8
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @OSSwapHostToBigInt64(i8* %75)
  %77 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 8
  store i8* %76, i8** %77, align 8
  %78 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %79 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %78, i32 0, i32 7
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @OSSwapHostToBigInt64(i8* %80)
  %82 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 7
  store i8* %81, i8** %82, align 8
  %83 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %84 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %83, i32 0, i32 6
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @OSSwapHostToBigInt32(i8* %85)
  %87 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 6
  store i8* %86, i8** %87, align 8
  %88 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %89 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @OSSwapHostToBigInt32(i8* %90)
  %92 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 5
  store i8* %91, i8** %92, align 8
  %93 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %94 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @OSSwapHostToBigInt32(i8* %95)
  %97 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 4
  store i8* %96, i8** %97, align 8
  %98 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %99 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @OSSwapHostToBigInt32(i8* %100)
  %102 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 3
  store i8* %101, i8** %102, align 8
  %103 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %104 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @OSSwapHostToBigInt32(i8* %105)
  %107 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %109 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @OSSwapHostToBigInt32(i8* %110)
  %112 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 1
  store i8* %111, i8** %112, align 8
  %113 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 2
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %6, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 3
  store i64 0, i64* %124, align 8
  %125 = load %struct.vnode*, %struct.vnode** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @VNOP_WRITE(%struct.vnode* %125, i32 %126, i32 0, %struct.vfs_context* %4)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @uio_resid(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %45
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @EIO, align 4
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %134, %131, %45
  %137 = load i32, i32* @DQ_MOD, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.dquot*, %struct.dquot** %3, align 8
  %140 = getelementptr inbounds %struct.dquot, %struct.dquot* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %144

144:                                              ; preds = %136, %21
  %145 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dqoffset(i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(%struct.dqblk*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i8* @OSSwapHostToBigInt64(i8*) #1

declare dso_local i8* @OSSwapHostToBigInt32(i8*) #1

declare dso_local i32 @VNOP_WRITE(%struct.vnode*, i32, i32, %struct.vfs_context*) #1

declare dso_local i64 @uio_resid(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
