; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_attach_proto_family.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_attach_proto_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_attach_proto_param = type { i32 }

@gif_input = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"gif_attach_proto_family can't attach interface\09\09\09    fam=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @gif_attach_proto_family to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gif_attach_proto_family(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet_attach_proto_param, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 @bzero(%struct.ifnet_attach_proto_param* %5, i32 4)
  %8 = load i32, i32* @gif_input, align 4
  %9 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ifnet_attach_protocol(i32 %10, i32 %11, %struct.ifnet_attach_proto_param* %5)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @EEXIST, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %15, %2
  %23 = load i64, i64* %6, align 8
  ret i64 %23
}

declare dso_local i32 @bzero(%struct.ifnet_attach_proto_param*, i32) #1

declare dso_local i64 @ifnet_attach_protocol(i32, i32, %struct.ifnet_attach_proto_param*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
