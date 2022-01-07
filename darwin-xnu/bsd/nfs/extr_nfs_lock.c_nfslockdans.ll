; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfslockdans.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfslockdans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockd_ans = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@LOCKD_ANS_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nfs_lock_mutex = common dso_local global i32 0, align 4
@LOCKD_ANS_GRANTED = common dso_local global i32 0, align 4
@LOCKD_MSG_CANCEL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@LOCKD_MSG_TEST = common dso_local global i32 0, align 4
@LOCKD_ANS_LOCK_INFO = common dso_local global i32 0, align 4
@LOCKD_ANS_LOCK_EXCL = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@LOCKD_ANS_DENIED_GRACE = common dso_local global i32 0, align 4
@LOCKD_MSG_DENIED_GRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfslockdans(i32 %0, %struct.lockd_ans* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lockd_ans*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.lockd_ans* %1, %struct.lockd_ans** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @proc_suser(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %160

14:                                               ; preds = %2
  %15 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %16 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LOCKD_ANS_VERSION, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %160

22:                                               ; preds = %14
  %23 = load i32, i32* @nfs_lock_mutex, align 4
  %24 = call i32 @lck_mtx_lock(i32 %23)
  %25 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %26 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_10__* @nfs_lockdmsg_find_by_xid(i32 %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %6, align 8
  %29 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %30 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LOCKD_ANS_GRANTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %22
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %41 = call i64 @nfs_lockdmsg_compare_to_answer(%struct.TYPE_10__* %39, %struct.lockd_ans* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %35
  %44 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %45 = call %struct.TYPE_10__* @nfs_lockdmsg_find_by_answer(%struct.lockd_ans* %44)
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %6, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LOCKD_MSG_CANCEL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %58

58:                                               ; preds = %57, %49, %46
  br label %59

59:                                               ; preds = %58, %22
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @nfs_lock_mutex, align 4
  %64 = call i32 @lck_mtx_unlock(i32 %63)
  %65 = load i32, i32* @EPIPE, align 4
  store i32 %65, i32* %3, align 4
  br label %160

66:                                               ; preds = %59
  %67 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %68 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LOCKD_MSG_TEST, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %139

79:                                               ; preds = %66
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %139

84:                                               ; preds = %79
  %85 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %86 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @LOCKD_ANS_LOCK_INFO, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %132

91:                                               ; preds = %84
  %92 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %93 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @LOCKD_ANS_LOCK_EXCL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @F_WRLCK, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  br label %110

104:                                              ; preds = %91
  %105 = load i32, i32* @F_RDLCK, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %112 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  store i32 %113, i32* %117, align 4
  %118 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %119 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 4
  %125 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %126 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  br label %138

132:                                              ; preds = %84
  %133 = load i32, i32* @F_UNLCK, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %110
  br label %139

139:                                              ; preds = %138, %79, %66
  %140 = load %struct.lockd_ans*, %struct.lockd_ans** %5, align 8
  %141 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @LOCKD_ANS_DENIED_GRACE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load i32, i32* @LOCKD_MSG_DENIED_GRACE, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %146, %139
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  store i32 1, i32* %155, align 8
  %156 = load i32, i32* @nfs_lock_mutex, align 4
  %157 = call i32 @lck_mtx_unlock(i32 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = call i32 @wakeup(%struct.TYPE_10__* %158)
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %153, %62, %20, %12
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @proc_suser(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.TYPE_10__* @nfs_lockdmsg_find_by_xid(i32) #1

declare dso_local i64 @nfs_lockdmsg_compare_to_answer(%struct.TYPE_10__*, %struct.lockd_ans*) #1

declare dso_local %struct.TYPE_10__* @nfs_lockdmsg_find_by_answer(%struct.lockd_ans*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
