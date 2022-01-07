; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_symlink.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_vnop_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_symlink_args = type { i32*, i32, i32, i32, i32, i32 }

@NFLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_vnop_symlink(%struct.vnop_symlink_args* %0) #0 {
  %2 = alloca %struct.vnop_symlink_args*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.vnop_symlink_args* %0, %struct.vnop_symlink_args** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %6 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %9 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VTONFS(i32 %10)
  %12 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %13 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %16 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFLNK, align 4
  %19 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %20 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @nfs4_create_rpc(i32 %7, i32 %11, i32 %14, i32 %17, i32 %18, i32 %21, i32** %3)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @NFSTOV(i32* %26)
  %28 = load %struct.vnop_symlink_args*, %struct.vnop_symlink_args** %2, align 8
  %29 = getelementptr inbounds %struct.vnop_symlink_args, %struct.vnop_symlink_args* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %1
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @nfs4_create_rpc(i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @VTONFS(i32) #1

declare dso_local i32 @NFSTOV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
