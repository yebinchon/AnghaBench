; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_incomplete.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_incomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag1 = type { i32 }
%struct.tag2 = type { %struct.tag1* }

@__const.incomplete.v1 = private unnamed_addr constant %struct.tag1 { i32 3 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @incomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @incomplete() #0 {
  %1 = alloca %struct.tag1, align 4
  %2 = alloca %struct.tag2, align 8
  %3 = bitcast %struct.tag1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.tag1* @__const.incomplete.v1 to i8*), i64 4, i1 false)
  %4 = getelementptr inbounds %struct.tag2, %struct.tag2* %2, i32 0, i32 0
  store %struct.tag1* %1, %struct.tag1** %4, align 8
  %5 = getelementptr inbounds %struct.tag2, %struct.tag2* %2, i32 0, i32 0
  %6 = load %struct.tag1*, %struct.tag1** %5, align 8
  %7 = getelementptr inbounds %struct.tag1, %struct.tag1* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @expect(i32 3, i32 %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
