; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_common.c_map_test.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_common.c_map_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_test() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  store i64 1, i64* %2, align 8
  br label %6

6:                                                ; preds = %16, %0
  %7 = load i64, i64* %2, align 8
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i64, i64* %2, align 8
  %13 = add i64 %12, 1
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @map_put(%struct.TYPE_4__* %1, i8* %11, i8* %14)
  br label %16

16:                                               ; preds = %9
  %17 = load i64, i64* %2, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %2, align 8
  br label %6

19:                                               ; preds = %6
  store i64 1, i64* %3, align 8
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i64, i64* %3, align 8
  %22 = icmp ult i64 %21, 1024
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i8* @map_get(%struct.TYPE_4__* %1, i8* %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  %30 = inttoptr i64 %29 to i8*
  %31 = icmp eq i8* %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %20

37:                                               ; preds = %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @map_put(%struct.TYPE_4__*, i8*, i8*) #2

declare dso_local i8* @map_get(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
