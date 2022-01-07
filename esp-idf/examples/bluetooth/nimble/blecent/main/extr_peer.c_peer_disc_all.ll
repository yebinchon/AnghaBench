; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_disc_all.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_disc_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer_svc = type { i32 }
%struct.peer = type { i32, i8*, i32*, i32 }

@BLE_HS_ENOTCONN = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@peer_svc_disced = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peer_disc_all(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.peer_svc*, align 8
  %9 = alloca %struct.peer*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.peer* @peer_find(i32 %11)
  store %struct.peer* %12, %struct.peer** %9, align 8
  %13 = load %struct.peer*, %struct.peer** %9, align 8
  %14 = icmp eq %struct.peer* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @BLE_HS_ENOTCONN, align 4
  store i32 %16, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.peer*, %struct.peer** %9, align 8
  %20 = getelementptr inbounds %struct.peer, %struct.peer* %19, i32 0, i32 3
  %21 = call %struct.peer_svc* @SLIST_FIRST(i32* %20)
  store %struct.peer_svc* %21, %struct.peer_svc** %8, align 8
  %22 = icmp ne %struct.peer_svc* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.peer*, %struct.peer** %9, align 8
  %25 = getelementptr inbounds %struct.peer, %struct.peer* %24, i32 0, i32 3
  %26 = load i32, i32* @next, align 4
  %27 = call i32 @SLIST_REMOVE_HEAD(i32* %25, i32 %26)
  %28 = load %struct.peer_svc*, %struct.peer_svc** %8, align 8
  %29 = call i32 @peer_svc_delete(%struct.peer_svc* %28)
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.peer*, %struct.peer** %9, align 8
  %32 = getelementptr inbounds %struct.peer, %struct.peer* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.peer*, %struct.peer** %9, align 8
  %35 = getelementptr inbounds %struct.peer, %struct.peer* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.peer*, %struct.peer** %9, align 8
  %38 = getelementptr inbounds %struct.peer, %struct.peer* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @peer_svc_disced, align 4
  %41 = load %struct.peer*, %struct.peer** %9, align 8
  %42 = call i32 @ble_gattc_disc_all_svcs(i32 %39, i32 %40, %struct.peer* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.peer* @peer_find(i32) #1

declare dso_local %struct.peer_svc* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @peer_svc_delete(%struct.peer_svc*) #1

declare dso_local i32 @ble_gattc_disc_all_svcs(i32, i32, %struct.peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
