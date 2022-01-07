; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_heap_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_heap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_heap = type { i32, %struct.dn_heap_entry* }
%struct.dn_heap_entry = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"dummynet: heap_init, Bogus call, have %d want %d\0A\00", align 1
@HEAP_INCREMENT = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dummynet: heap_init, resize %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_heap*, i32)* @heap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_init(%struct.dn_heap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_heap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_heap_entry*, align 8
  store %struct.dn_heap* %0, %struct.dn_heap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %8 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %14 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HEAP_INCREMENT, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @HEAP_INCREMENT, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_DUMMYNET, align 4
  %30 = load i32, i32* @M_DONTWAIT, align 4
  %31 = call %struct.dn_heap_entry* @_MALLOC(i32 %28, i32 %29, i32 %30)
  store %struct.dn_heap_entry* %31, %struct.dn_heap_entry** %6, align 8
  %32 = load %struct.dn_heap_entry*, %struct.dn_heap_entry** %6, align 8
  %33 = icmp eq %struct.dn_heap_entry* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 1, i32* %3, align 4
  br label %66

37:                                               ; preds = %18
  %38 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %39 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %44 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %43, i32 0, i32 1
  %45 = load %struct.dn_heap_entry*, %struct.dn_heap_entry** %44, align 8
  %46 = load %struct.dn_heap_entry*, %struct.dn_heap_entry** %6, align 8
  %47 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %48 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @bcopy(%struct.dn_heap_entry* %45, %struct.dn_heap_entry* %46, i32 %52)
  %54 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %55 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %54, i32 0, i32 1
  %56 = load %struct.dn_heap_entry*, %struct.dn_heap_entry** %55, align 8
  %57 = load i32, i32* @M_DUMMYNET, align 4
  %58 = call i32 @FREE(%struct.dn_heap_entry* %56, i32 %57)
  br label %59

59:                                               ; preds = %42, %37
  %60 = load %struct.dn_heap_entry*, %struct.dn_heap_entry** %6, align 8
  %61 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %62 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %61, i32 0, i32 1
  store %struct.dn_heap_entry* %60, %struct.dn_heap_entry** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %65 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %34, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local %struct.dn_heap_entry* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.dn_heap_entry*, %struct.dn_heap_entry*, i32) #1

declare dso_local i32 @FREE(%struct.dn_heap_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
