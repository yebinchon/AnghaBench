; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_mkdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_mkdir_args = type { i32*, i32, i32, i32, i32 }

@NFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_mkdir(%struct.vnop_mkdir_args* %0) #0 {
  %2 = alloca %struct.vnop_mkdir_args*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.vnop_mkdir_args* %0, %struct.vnop_mkdir_args** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %6 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %9 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @VTONFS(i32 %10)
  %12 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %13 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %16 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NFDIR, align 4
  %19 = call i32 @nfs4_create_rpc(i32 %7, i32 %11, i32 %14, i32 %17, i32 %18, i32* null, i32** %3)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @NFSTOV(i32* %23)
  %25 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %26 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @nfs4_create_rpc(i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @VTONFS(i32) #1

declare dso_local i32 @NFSTOV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
