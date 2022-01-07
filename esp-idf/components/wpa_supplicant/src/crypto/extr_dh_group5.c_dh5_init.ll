; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_dh_group5.c_dh5_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_dh_group5.c_dh5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dh5_init(%struct.wpabuf** %0, %struct.wpabuf** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpabuf**, align 8
  %5 = alloca %struct.wpabuf**, align 8
  store %struct.wpabuf** %0, %struct.wpabuf*** %4, align 8
  store %struct.wpabuf** %1, %struct.wpabuf*** %5, align 8
  %6 = call i32 @dh_groups_get(i32 5)
  %7 = load %struct.wpabuf**, %struct.wpabuf*** %4, align 8
  %8 = call %struct.wpabuf* @dh_init(i32 %6, %struct.wpabuf** %7)
  %9 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* %8, %struct.wpabuf** %9, align 8
  %10 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %12 = icmp eq %struct.wpabuf* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %15

14:                                               ; preds = %2
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i8*, i8** %3, align 8
  ret i8* %16
}

declare dso_local %struct.wpabuf* @dh_init(i32, %struct.wpabuf**) #1

declare dso_local i32 @dh_groups_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
