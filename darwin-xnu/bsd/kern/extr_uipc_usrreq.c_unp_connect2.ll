; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_connect2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_connect2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64 }
%struct.unpcb = type { i32, i32, %struct.unpcb*, i32, i32 }

@EPROTOTYPE = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@unp_reflink = common dso_local global i32 0, align 4
@UNP_HAVEPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unknown socket type %d in unp_connect2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unp_connect2(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.unpcb*, align 8
  %7 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.unpcb* @sotounpcb(%struct.socket* %8)
  store %struct.unpcb* %9, %struct.unpcb** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %18, i32* %3, align 4
  br label %157

19:                                               ; preds = %2
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = call %struct.unpcb* @sotounpcb(%struct.socket* %20)
  store %struct.unpcb* %21, %struct.unpcb** %7, align 8
  %22 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %23 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %22, i32 0, i32 1
  %24 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %25 = call i32 @LCK_MTX_ASSERT(i32* %23, i32 %24)
  %26 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %27 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %26, i32 0, i32 1
  %28 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %29 = call i32 @LCK_MTX_ASSERT(i32* %27, i32 %28)
  %30 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %31 = icmp eq %struct.unpcb* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %34 = icmp eq %struct.unpcb* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %19
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %157

37:                                               ; preds = %32
  %38 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %39 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %40 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %39, i32 0, i32 2
  store %struct.unpcb* %38, %struct.unpcb** %40, align 8
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.socket*, %struct.socket** %4, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %143 [
    i32 129, label %48
    i32 128, label %79
  ]

48:                                               ; preds = %37
  %49 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %50 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %49, i32 0, i32 4
  %51 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %52 = load i32, i32* @unp_reflink, align 4
  %53 = call i32 @LIST_INSERT_HEAD(i32* %50, %struct.unpcb* %51, i32 %52)
  %54 = load %struct.socket*, %struct.socket** %4, align 8
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = icmp ne %struct.socket* %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %48
  %58 = load %struct.socket*, %struct.socket** %5, align 8
  %59 = call i32 @socket_unlock(%struct.socket* %58, i32 0)
  %60 = load %struct.socket*, %struct.socket** %4, align 8
  %61 = call i32 @soisconnected(%struct.socket* %60)
  %62 = load %struct.socket*, %struct.socket** %4, align 8
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = call i32 @unp_get_locks_in_order(%struct.socket* %62, %struct.socket* %63)
  %65 = load %struct.socket*, %struct.socket** %5, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load %struct.socket*, %struct.socket** %5, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  br label %78

75:                                               ; preds = %48
  %76 = load %struct.socket*, %struct.socket** %4, align 8
  %77 = call i32 @soisconnected(%struct.socket* %76)
  br label %78

78:                                               ; preds = %75, %57
  br label %148

79:                                               ; preds = %37
  %80 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %81 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @UNP_HAVEPC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %112, label %86

86:                                               ; preds = %79
  %87 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %88 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @UNP_HAVEPC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %86
  %94 = call i32 (...) @kauth_cred_get()
  %95 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %96 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %95, i32 0, i32 3
  %97 = call i32 @cru2x(i32 %94, i32* %96)
  %98 = load i32, i32* @UNP_HAVEPC, align 4
  %99 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %100 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = call i32 (...) @kauth_cred_get()
  %104 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %105 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %104, i32 0, i32 3
  %106 = call i32 @cru2x(i32 %103, i32* %105)
  %107 = load i32, i32* @UNP_HAVEPC, align 4
  %108 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %109 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %93, %86, %79
  %113 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %114 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %115 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %114, i32 0, i32 2
  store %struct.unpcb* %113, %struct.unpcb** %115, align 8
  %116 = load %struct.socket*, %struct.socket** %4, align 8
  %117 = getelementptr inbounds %struct.socket, %struct.socket* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.socket*, %struct.socket** %4, align 8
  %121 = call i32 @socket_unlock(%struct.socket* %120, i32 0)
  %122 = load %struct.socket*, %struct.socket** %5, align 8
  %123 = call i32 @soisconnected(%struct.socket* %122)
  %124 = load %struct.socket*, %struct.socket** %5, align 8
  %125 = call i32 @socket_unlock(%struct.socket* %124, i32 0)
  %126 = load %struct.socket*, %struct.socket** %4, align 8
  %127 = call i32 @socket_lock(%struct.socket* %126, i32 0)
  %128 = load %struct.socket*, %struct.socket** %4, align 8
  %129 = call i32 @soisconnected(%struct.socket* %128)
  %130 = load %struct.socket*, %struct.socket** %4, align 8
  %131 = load %struct.socket*, %struct.socket** %5, align 8
  %132 = call i32 @unp_get_locks_in_order(%struct.socket* %130, %struct.socket* %131)
  %133 = load %struct.socket*, %struct.socket** %5, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @VERIFY(i32 %137)
  %139 = load %struct.socket*, %struct.socket** %5, align 8
  %140 = getelementptr inbounds %struct.socket, %struct.socket* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, -1
  store i64 %142, i64* %140, align 8
  br label %148

143:                                              ; preds = %37
  %144 = load %struct.socket*, %struct.socket** %4, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %143, %112, %78
  %149 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %150 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %149, i32 0, i32 1
  %151 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %152 = call i32 @LCK_MTX_ASSERT(i32* %150, i32 %151)
  %153 = load %struct.unpcb*, %struct.unpcb** %7, align 8
  %154 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %153, i32 0, i32 1
  %155 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %156 = call i32 @LCK_MTX_ASSERT(i32* %154, i32 %155)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %148, %35, %17
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.unpcb*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

declare dso_local i32 @unp_get_locks_in_order(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @cru2x(i32, i32*) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
