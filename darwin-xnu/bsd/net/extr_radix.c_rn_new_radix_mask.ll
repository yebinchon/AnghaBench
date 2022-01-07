; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_new_radix_mask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_new_radix_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32, %struct.radix_mask*, i32, i32 }
%struct.radix_mask = type { i32, %struct.radix_mask*, i32, %struct.radix_node*, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Mask for route not entered\0A\00", align 1
@RNF_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_mask* (%struct.radix_node*, %struct.radix_mask*)* @rn_new_radix_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_mask* @rn_new_radix_mask(%struct.radix_node* %0, %struct.radix_mask* %1) #0 {
  %3 = alloca %struct.radix_mask*, align 8
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca %struct.radix_mask*, align 8
  %6 = alloca %struct.radix_mask*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store %struct.radix_mask* %1, %struct.radix_mask** %5, align 8
  %7 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %8 = call i32 @MKGet(%struct.radix_mask* %7)
  %9 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %10 = icmp eq %struct.radix_mask* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = call i32 @log(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.radix_mask* null, %struct.radix_mask** %3, align 8
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %16 = call i32 @Bzero(%struct.radix_mask* %15, i32 40)
  %17 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %18 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %21 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %23 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %26 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %28 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RNF_NORMAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %14
  %34 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %35 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %36 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %35, i32 0, i32 3
  store %struct.radix_node* %34, %struct.radix_node** %36, align 8
  br label %43

37:                                               ; preds = %14
  %38 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %39 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %42 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.radix_mask*, %struct.radix_mask** %5, align 8
  %45 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %46 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %45, i32 0, i32 1
  store %struct.radix_mask* %44, %struct.radix_mask** %46, align 8
  %47 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  %48 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %49 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %48, i32 0, i32 1
  store %struct.radix_mask* %47, %struct.radix_mask** %49, align 8
  %50 = load %struct.radix_mask*, %struct.radix_mask** %6, align 8
  store %struct.radix_mask* %50, %struct.radix_mask** %3, align 8
  br label %51

51:                                               ; preds = %43, %11
  %52 = load %struct.radix_mask*, %struct.radix_mask** %3, align 8
  ret %struct.radix_mask* %52
}

declare dso_local i32 @MKGet(%struct.radix_mask*) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @Bzero(%struct.radix_mask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
