; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_lazy_makewritable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_lazy_makewritable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_pdesc = type { i32, i32, %struct.pf_addr*, %struct.pf_addr*, i32*, i32, %struct.TYPE_5__* }
%struct.pf_addr = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.ip = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pf_lazy_makewritable(%struct.pf_pdesc* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pf_pdesc*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ip*, align 8
  store %struct.pf_pdesc* %0, %struct.pf_pdesc** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %11 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %80

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %18 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp eq %struct.TYPE_5__* %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @VERIFY(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %28 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %15
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @pbuf_ensure_writable(%struct.TYPE_5__* %32, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %40 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = call i32 @pf_find_mtag_pbuf(%struct.TYPE_5__* %44)
  %46 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %47 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %49 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %70 [
    i32 129, label %51
  ]

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to %struct.ip*
  store %struct.ip* %53, %struct.ip** %9, align 8
  %54 = load %struct.ip*, %struct.ip** %9, align 8
  %55 = getelementptr inbounds %struct.ip, %struct.ip* %54, i32 0, i32 2
  %56 = ptrtoint i32* %55 to i64
  %57 = inttoptr i64 %56 to %struct.pf_addr*
  %58 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %59 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %58, i32 0, i32 3
  store %struct.pf_addr* %57, %struct.pf_addr** %59, align 8
  %60 = load %struct.ip*, %struct.ip** %9, align 8
  %61 = getelementptr inbounds %struct.ip, %struct.ip* %60, i32 0, i32 1
  %62 = ptrtoint i32* %61 to i64
  %63 = inttoptr i64 %62 to %struct.pf_addr*
  %64 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %65 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %64, i32 0, i32 2
  store %struct.pf_addr* %63, %struct.pf_addr** %65, align 8
  %66 = load %struct.ip*, %struct.ip** %9, align 8
  %67 = getelementptr inbounds %struct.ip, %struct.ip* %66, i32 0, i32 0
  %68 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %69 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %43, %51
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71, %15
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %78

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i8* [ null, %75 ], [ %77, %76 ]
  store i8* %79, i8** %4, align 8
  br label %80

80:                                               ; preds = %78, %14
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i8* @pbuf_ensure_writable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pf_find_mtag_pbuf(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
