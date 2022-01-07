; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_chomp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_chomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.buffer*)* @query_chomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_chomp(%struct.buffer* noalias sret %0, %struct.buffer* byval(%struct.buffer) align 8 %1) #0 {
  br label %3

3:                                                ; preds = %23, %2
  %4 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @isspace(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %10, %3
  %21 = phi i1 [ false, %3 ], [ %19, %10 ]
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %3

27:                                               ; preds = %20
  %28 = bitcast %struct.buffer* %0 to i8*
  %29 = bitcast %struct.buffer* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  ret void
}

declare dso_local i64 @isspace(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
