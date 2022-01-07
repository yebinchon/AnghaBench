; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_acquire_sockbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_acquire_sockbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__*, %struct.sockbuf, %struct.sockbuf }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32* (%struct.socket*, i32)* }
%struct.TYPE_3__ = type { i32* }
%struct.sockbuf = type { i32, i64, i64, i32* }
%struct.cfil_info = type { i32 }

@SB_LOCK = common dso_local global i32 0, align 4
@PR_F_WILLUNLOCK = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cfil_acquire_sockbuf\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"so %llx cfil detached\00", align 1
@CFIF_DROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"so %llx drop set\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32)* @cfil_acquire_sockbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_acquire_sockbuf(%struct.socket* %0, %struct.cfil_info* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.cfil_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockbuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32* (...) @current_thread()
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 2
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 1
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi %struct.sockbuf* [ %16, %14 ], [ %19, %17 ]
  store %struct.sockbuf* %21, %struct.sockbuf** %8, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %68, %20
  %23 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %24 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SB_LOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %22
  %30 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %37, %38
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i1 [ false, %29 ], [ %39, %34 ]
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi i1 [ true, %22 ], [ %41, %40 ]
  br i1 %43, label %44, label %97

44:                                               ; preds = %42
  %45 = load %struct.socket*, %struct.socket** %4, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %48, align 8
  %50 = icmp ne i32* (%struct.socket*, i32)* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.socket*, %struct.socket** %4, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %55, align 8
  %57 = load %struct.socket*, %struct.socket** %4, align 8
  %58 = load i32, i32* @PR_F_WILLUNLOCK, align 4
  %59 = call i32* %56(%struct.socket* %57, i32 %58)
  store i32* %59, i32** %9, align 8
  br label %68

60:                                               ; preds = %44
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %60, %51
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %71 = call i32 @LCK_MTX_ASSERT(i32* %69, i32 %70)
  %72 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %73 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %77 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @VERIFY(i32 %80)
  %82 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %83 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %82, i32 0, i32 0
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @PSOCK, align 4
  %86 = call i32 @msleep(i32* %83, i32* %84, i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null)
  %87 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %88 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @VERIFY(i32 %91)
  %93 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %94 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  br label %22

97:                                               ; preds = %42
  %98 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %99 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %97
  %103 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %104 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY(i32 %107)
  %109 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %110 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SB_LOCK, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @VERIFY(i32 %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %119 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %118, i32 0, i32 3
  store i32* %117, i32** %119, align 8
  %120 = load i32, i32* @SB_LOCK, align 4
  %121 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %122 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %102, %97
  %126 = load %struct.sockbuf*, %struct.sockbuf** %8, align 8
  %127 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %131 = icmp eq %struct.cfil_info* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32, i32* @LOG_ERR, align 4
  %134 = load %struct.socket*, %struct.socket** %4, align 8
  %135 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %134)
  %136 = trunc i64 %135 to i32
  %137 = call i32 @CFIL_LOG(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  store i32 0, i32* %10, align 4
  br label %153

138:                                              ; preds = %125
  %139 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %140 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @CFIF_DROP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load i32, i32* @LOG_ERR, align 4
  %147 = load %struct.socket*, %struct.socket** %4, align 8
  %148 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %147)
  %149 = trunc i64 %148 to i32
  %150 = call i32 @CFIL_LOG(i32 %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @EPIPE, align 4
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %145, %138
  br label %153

153:                                              ; preds = %152, %132
  %154 = load i32, i32* %10, align 4
  ret i32 %154
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
