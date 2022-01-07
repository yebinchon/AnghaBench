; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_heap_extract.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_heap_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_heap = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"dummynet: warning, extract from empty heap 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"dummynet: heap_extract from middle not supported on this heap!!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"dummynet: heap_extract, father %d out of bound 0..%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"dummynet: heap_extract\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_heap*, i8*)* @heap_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_extract(%struct.dn_heap* %0, i8* %1) #0 {
  %3 = alloca %struct.dn_heap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dn_heap* %0, %struct.dn_heap** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %9 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %16 = call i64 @VM_KERNEL_ADDRPERM(%struct.dn_heap* %15)
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %137

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %24 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @panic(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %32 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %42 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39, %29
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %48 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  %51 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %45, %39
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @RESET_OFFSET(%struct.dn_heap* %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @HEAP_LEFT(i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %90, %53
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %69 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %78 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @DN_KEY_LT(i32 %76, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %67, %63
  %91 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %92 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %98 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = bitcast %struct.TYPE_2__* %96 to i8*
  %104 = bitcast %struct.TYPE_2__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @SET_OFFSET(%struct.dn_heap* %105, i32 %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @HEAP_LEFT(i32 %109)
  store i32 %110, i32* %5, align 4
  br label %59

111:                                              ; preds = %59
  %112 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %113 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %111
  %120 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %121 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %127 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = bitcast %struct.TYPE_2__* %125 to i8*
  %133 = bitcast %struct.TYPE_2__* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 4, i1 false)
  %134 = load %struct.dn_heap*, %struct.dn_heap** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @heap_insert(%struct.dn_heap* %134, i32 %135, i32* null)
  br label %137

137:                                              ; preds = %14, %119, %111
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.dn_heap*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @RESET_OFFSET(%struct.dn_heap*, i32) #1

declare dso_local i32 @HEAP_LEFT(i32) #1

declare dso_local i64 @DN_KEY_LT(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SET_OFFSET(%struct.dn_heap*, i32) #1

declare dso_local i32 @heap_insert(%struct.dn_heap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
