; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_label.c_mac_labelzone_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_label.c_mac_labelzone_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Free of NULL MAC label\0A\00", align 1
@MAC_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Free of uninitialized label\0A\00", align 1
@zone_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_labelzone_free(%struct.label* %0) #0 {
  %2 = alloca %struct.label*, align 8
  store %struct.label* %0, %struct.label** %2, align 8
  %3 = load %struct.label*, %struct.label** %2, align 8
  %4 = icmp eq %struct.label* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.label*, %struct.label** %2, align 8
  %9 = getelementptr inbounds %struct.label, %struct.label* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MAC_FLAG_INITIALIZED, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %7
  %17 = load %struct.label*, %struct.label** %2, align 8
  %18 = call i32 @bzero(%struct.label* %17, i32 4)
  %19 = load i32, i32* @zone_label, align 4
  %20 = load %struct.label*, %struct.label** %2, align 8
  %21 = call i32 @zfree(i32 %19, %struct.label* %20)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(%struct.label*, i32) #1

declare dso_local i32 @zfree(i32, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
