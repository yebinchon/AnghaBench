; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_netagent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_netagent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.if_agentidsreq64 = type { i32, i32 }
%struct.proc = type { i32 }
%struct.if_agentidreq = type { i32 }
%union.anon = type { %struct.if_agentidsreq32 }
%struct.if_agentidsreq32 = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.if_agentidsreq64*, %struct.proc*)* @ifioctl_netagent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_netagent(%struct.ifnet* %0, i32 %1, %struct.if_agentidsreq64* %2, %struct.proc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.if_agentidsreq64*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.if_agentidreq*, align 8
  %11 = alloca %union.anon, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.if_agentidsreq64* %2, %struct.if_agentidsreq64** %8, align 8
  store %struct.proc* %3, %struct.proc** %9, align 8
  %13 = load %struct.if_agentidsreq64*, %struct.if_agentidsreq64** %8, align 8
  %14 = bitcast %struct.if_agentidsreq64* %13 to i8*
  %15 = bitcast i8* %14 to %struct.if_agentidreq*
  store %struct.if_agentidreq* %15, %struct.if_agentidreq** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %17 = icmp ne %struct.ifnet* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %21 = call i32 @ifnet_is_attached(%struct.ifnet* %20, i32 1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %24, i32* %5, align 4
  br label %107

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 130
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25
  %32 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %33 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %32)
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %36 = call i32 @ifnet_lock_shared(%struct.ifnet* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %99 [
    i32 131, label %39
    i32 130, label %50
    i32 129, label %61
    i32 128, label %81
  ]

39:                                               ; preds = %37
  %40 = load %struct.proc*, %struct.proc** %9, align 8
  %41 = call i32 @proc_suser(%struct.proc* %40)
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %101

44:                                               ; preds = %39
  %45 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %46 = load %struct.if_agentidreq*, %struct.if_agentidreq** %10, align 8
  %47 = getelementptr inbounds %struct.if_agentidreq, %struct.if_agentidreq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @if_add_netagent_locked(%struct.ifnet* %45, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %101

50:                                               ; preds = %37
  %51 = load %struct.proc*, %struct.proc** %9, align 8
  %52 = call i32 @proc_suser(%struct.proc* %51)
  store i32 %52, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %101

55:                                               ; preds = %50
  %56 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %57 = load %struct.if_agentidreq*, %struct.if_agentidreq** %10, align 8
  %58 = getelementptr inbounds %struct.if_agentidreq, %struct.if_agentidreq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @if_delete_netagent_locked(%struct.ifnet* %56, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %101

61:                                               ; preds = %37
  %62 = load %struct.if_agentidsreq64*, %struct.if_agentidsreq64** %8, align 8
  %63 = bitcast %union.anon* %11 to %struct.if_agentidsreq32*
  %64 = bitcast %struct.if_agentidsreq32* %63 to %struct.if_agentidsreq64*
  %65 = call i32 @bcopy(%struct.if_agentidsreq64* %62, %struct.if_agentidsreq64* %64, i32 8)
  %66 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %67 = bitcast %union.anon* %11 to %struct.if_agentidsreq32*
  %68 = getelementptr inbounds %struct.if_agentidsreq32, %struct.if_agentidsreq32* %67, i32 0, i32 1
  %69 = bitcast %union.anon* %11 to %struct.if_agentidsreq32*
  %70 = getelementptr inbounds %struct.if_agentidsreq32, %struct.if_agentidsreq32* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ifioctl_getnetagents(%struct.ifnet* %66, i32* %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %61
  %76 = bitcast %union.anon* %11 to %struct.if_agentidsreq32*
  %77 = bitcast %struct.if_agentidsreq32* %76 to %struct.if_agentidsreq64*
  %78 = load %struct.if_agentidsreq64*, %struct.if_agentidsreq64** %8, align 8
  %79 = call i32 @bcopy(%struct.if_agentidsreq64* %77, %struct.if_agentidsreq64* %78, i32 8)
  br label %80

80:                                               ; preds = %75, %61
  br label %101

81:                                               ; preds = %37
  %82 = load %struct.if_agentidsreq64*, %struct.if_agentidsreq64** %8, align 8
  %83 = bitcast %union.anon* %11 to %struct.if_agentidsreq64*
  %84 = call i32 @bcopy(%struct.if_agentidsreq64* %82, %struct.if_agentidsreq64* %83, i32 8)
  %85 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %86 = bitcast %union.anon* %11 to %struct.if_agentidsreq64*
  %87 = getelementptr inbounds %struct.if_agentidsreq64, %struct.if_agentidsreq64* %86, i32 0, i32 1
  %88 = bitcast %union.anon* %11 to %struct.if_agentidsreq64*
  %89 = getelementptr inbounds %struct.if_agentidsreq64, %struct.if_agentidsreq64* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ifioctl_getnetagents(%struct.ifnet* %85, i32* %87, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = bitcast %union.anon* %11 to %struct.if_agentidsreq64*
  %96 = load %struct.if_agentidsreq64*, %struct.if_agentidsreq64** %8, align 8
  %97 = call i32 @bcopy(%struct.if_agentidsreq64* %95, %struct.if_agentidsreq64* %96, i32 8)
  br label %98

98:                                               ; preds = %94, %81
  br label %101

99:                                               ; preds = %37
  %100 = call i32 @VERIFY(i32 0)
  br label %101

101:                                              ; preds = %99, %98, %80, %55, %54, %44, %43
  %102 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %103 = call i32 @ifnet_lock_done(%struct.ifnet* %102)
  %104 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %105 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %101, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @proc_suser(%struct.proc*) #1

declare dso_local i32 @if_add_netagent_locked(%struct.ifnet*, i32) #1

declare dso_local i32 @if_delete_netagent_locked(%struct.ifnet*, i32) #1

declare dso_local i32 @bcopy(%struct.if_agentidsreq64*, %struct.if_agentidsreq64*, i32) #1

declare dso_local i32 @ifioctl_getnetagents(%struct.ifnet*, i32*, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
