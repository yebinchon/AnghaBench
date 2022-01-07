; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_set_gwroute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_set_gwroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rtentry = type { i32, %struct.rtentry*, %struct.rtentry* }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@RTF_WASCLONED = common dso_local global i32 0, align 4
@RTF_ROUTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_set_gwroute(%struct.rtentry* %0, %struct.sockaddr* %1, %struct.rtentry* %2) #0 {
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtentry*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.rtentry* %2, %struct.rtentry** %6, align 8
  %9 = load i32, i32* @rnh_lock, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32 %9, i32 %10)
  %12 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %13 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %12)
  %14 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %15 = icmp ne %struct.rtentry* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %18 = call i32 @RT_ADDREF(%struct.rtentry* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 2
  %22 = load %struct.rtentry*, %struct.rtentry** %21, align 8
  %23 = icmp ne %struct.rtentry* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %26 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %25, i32 0, i32 2
  %27 = load %struct.rtentry*, %struct.rtentry** %26, align 8
  store %struct.rtentry* %27, %struct.rtentry** %8, align 8
  %28 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %29 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %30 = icmp ne %struct.rtentry* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY(i32 %31)
  %33 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %34 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %33, i32 0, i32 2
  store %struct.rtentry* null, %struct.rtentry** %34, align 8
  %35 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %36 = call i32 @RT_UNLOCK(%struct.rtentry* %35)
  %37 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %38 = call i32 @rtfree_locked(%struct.rtentry* %37)
  %39 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %40 = call i32 @RT_LOCK(%struct.rtentry* %39)
  %41 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %42 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %41, i32 0, i32 2
  %43 = load %struct.rtentry*, %struct.rtentry** %42, align 8
  %44 = icmp eq %struct.rtentry* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  br label %47

47:                                               ; preds = %24, %19
  %48 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %49 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %50 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %49, i32 0, i32 2
  store %struct.rtentry* %48, %struct.rtentry** %50, align 8
  %51 = icmp ne %struct.rtentry* %48, null
  br i1 %51, label %52, label %122

52:                                               ; preds = %47
  %53 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %54 = call i32 @RT_ADDREF(%struct.rtentry* %53)
  %55 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %56 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RTF_WASCLONED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %52
  %62 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %63 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %62, i32 0, i32 1
  %64 = load %struct.rtentry*, %struct.rtentry** %63, align 8
  %65 = icmp ne %struct.rtentry* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %68 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %67, i32 0, i32 1
  %69 = load %struct.rtentry*, %struct.rtentry** %68, align 8
  %70 = call %struct.sockaddr* @rt_key(%struct.rtentry* %69)
  %71 = call i64 @SA_DEFAULT(%struct.sockaddr* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %75 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %74, i32 0, i32 1
  %76 = load %struct.rtentry*, %struct.rtentry** %75, align 8
  %77 = call i64 @RT_HOST(%struct.rtentry* %76)
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %73, %66, %61
  %81 = phi i1 [ false, %66 ], [ false, %61 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %7, align 4
  br label %95

83:                                               ; preds = %52
  %84 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %85 = call i64 @SA_DEFAULT(%struct.sockaddr* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %89 = call i64 @RT_HOST(%struct.rtentry* %88)
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %87, %83
  %93 = phi i1 [ false, %83 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %80
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %100 = call i64 @RT_HOST(%struct.rtentry* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %104 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RTF_ROUTER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %102
  %110 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %111 = call i32 @RT_LOCK(%struct.rtentry* %110)
  %112 = load i32, i32* @RTF_ROUTER, align 4
  %113 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %114 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %118 = call i32 @RT_UNLOCK(%struct.rtentry* %117)
  br label %119

119:                                              ; preds = %109, %102, %98, %95
  %120 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %121 = call i32 @RT_REMREF(%struct.rtentry* %120)
  br label %122

122:                                              ; preds = %119, %47
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i64 @SA_DEFAULT(%struct.sockaddr*) #1

declare dso_local %struct.sockaddr* @rt_key(%struct.rtentry*) #1

declare dso_local i64 @RT_HOST(%struct.rtentry*) #1

declare dso_local i32 @RT_REMREF(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
