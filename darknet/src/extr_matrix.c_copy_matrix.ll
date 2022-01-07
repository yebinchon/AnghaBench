; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_matrix.c_copy_matrix.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_matrix.c_copy_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_matrix(%struct.TYPE_4__* noalias sret %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = bitcast %struct.TYPE_4__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @calloc(i32 %12, i32 8)
  %14 = bitcast i8* %13 to i8**
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i8** %14, i8*** %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @calloc(i32 %23, i32 4)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  store i8* %24, i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @copy_cpu(i32 %31, i8* %37, i32 1, i8* %43, i32 1)
  br label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %16

48:                                               ; preds = %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @copy_cpu(i32, i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
