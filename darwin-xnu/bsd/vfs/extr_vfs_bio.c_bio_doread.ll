; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bio_doread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bio_doread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@B_DONE = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@TR_BREADMISS = common dso_local global i32 0, align 4
@TR_BREADHIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (i32, i32, i32, i32, i32, i32)* @bio_doread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @bio_doread(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buf*, align 8
  %14 = alloca %struct.proc*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call %struct.buf* @buf_getblk(i32 %15, i32 %16, i32 %17, i32 0, i32 0, i32 %18)
  store %struct.buf* %19, %struct.buf** %13, align 8
  %20 = load %struct.buf*, %struct.buf** %13, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @B_DONE, align 4
  %24 = load i32, i32* @B_DELWRI, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ISSET(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %80, label %28

28:                                               ; preds = %6
  %29 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %29, %struct.proc** %14, align 8
  %30 = load %struct.buf*, %struct.buf** %13, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @B_READ, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @SET(i32 %32, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @IS_VALID_CRED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load %struct.buf*, %struct.buf** %13, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_VALID_CRED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @kauth_cred_ref(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.buf*, %struct.buf** %13, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %40, %28
  %53 = load %struct.buf*, %struct.buf** %13, align 8
  %54 = call i32 @VNOP_STRATEGY(%struct.buf* %53)
  %55 = load i32, i32* @TR_BREADMISS, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pack(i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @trace(i32 %55, i32 %58, i32 %59)
  %61 = load %struct.proc*, %struct.proc** %14, align 8
  %62 = icmp ne %struct.proc* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %52
  %64 = load %struct.proc*, %struct.proc** %14, align 8
  %65 = getelementptr inbounds %struct.proc, %struct.proc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.proc*, %struct.proc** %14, align 8
  %70 = getelementptr inbounds %struct.proc, %struct.proc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @OSIncrementAtomicLong(i32* %73)
  br label %75

75:                                               ; preds = %68, %63, %52
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store %struct.buf* null, %struct.buf** %13, align 8
  br label %79

79:                                               ; preds = %78, %75
  br label %87

80:                                               ; preds = %6
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.buf*, %struct.buf** %13, align 8
  %85 = call i32 @buf_brelse(%struct.buf* %84)
  store %struct.buf* null, %struct.buf** %13, align 8
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %79
  %88 = load i32, i32* @TR_BREADHIT, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @pack(i32 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @trace(i32 %88, i32 %91, i32 %92)
  %94 = load %struct.buf*, %struct.buf** %13, align 8
  ret %struct.buf* %94
}

declare dso_local %struct.buf* @buf_getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

declare dso_local i32 @VNOP_STRATEGY(%struct.buf*) #1

declare dso_local i32 @trace(i32, i32, i32) #1

declare dso_local i32 @pack(i32, i32) #1

declare dso_local i32 @OSIncrementAtomicLong(i32*) #1

declare dso_local i32 @buf_brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
