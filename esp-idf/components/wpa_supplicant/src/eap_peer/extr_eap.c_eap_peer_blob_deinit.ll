; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_blob_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap.c_eap_peer_blob_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32* }

@BLOB_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_peer_blob_deinit(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  %3 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @BLOB_NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %8
  %19 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %20 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @os_free(i32* %26)
  %28 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %18, %8
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %4

39:                                               ; preds = %4
  %40 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = load i32, i32* @BLOB_NUM, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @os_bzero(%struct.TYPE_4__* %43, i32 %47)
  %49 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %50 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %53 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %56 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  ret void
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @os_bzero(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
