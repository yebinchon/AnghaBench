; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_select.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_select_args = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.fileproc = type { %struct.fileglob* }
%struct.fileglob = type { i8* }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_select(%struct.vnop_select_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_select_args*, align 8
  %4 = alloca %struct.fileproc, align 8
  %5 = alloca %struct.fileglob, align 8
  %6 = alloca i32, align 4
  store %struct.vnop_select_args* %0, %struct.vnop_select_args** %3, align 8
  %7 = call i32 @bzero(%struct.fileproc* %4, i32 8)
  %8 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %4, i32 0, i32 0
  store %struct.fileglob* %5, %struct.fileglob** %8, align 8
  %9 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %10 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FREAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %17 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %4, i32 0, i32 0
  %25 = load %struct.fileglob*, %struct.fileglob** %24, align 8
  %26 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %28 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %31 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %34 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @soo_select(%struct.fileproc* %4, i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %77

41:                                               ; preds = %15
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %44 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FWRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %42
  %50 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %51 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %4, i32 0, i32 0
  %59 = load %struct.fileglob*, %struct.fileglob** %58, align 8
  %60 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %62 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %65 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %68 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @soo_select(%struct.fileproc* %4, i32 %63, i32 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %49
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %77

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %42
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73, %39
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @bzero(%struct.fileproc*, i32) #1

declare dso_local i32 @soo_select(%struct.fileproc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
