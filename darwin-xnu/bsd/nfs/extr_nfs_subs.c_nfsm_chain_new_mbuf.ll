; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_new_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_new_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i32, i32, i64, i32* }

@NFSM_CHAIN_FLAG_ADD_CLUSTERS = common dso_local global i32 0, align 4
@nfs_mbuf_minclsize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"got NULL mbuf?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_chain_new_mbuf(%struct.nfsm_chain* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsm_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsm_chain* %0, %struct.nfsm_chain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %9 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NFSM_CHAIN_FLAG_ADD_CLUSTERS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @nfs_mbuf_minclsize, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @nfsm_mbuf_get(i32 %17, i32** %6, i64 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %31 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %36 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %39 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %42 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @mbuf_data(i32* %43)
  %45 = sub nsw i64 %40, %44
  %46 = call i32 @mbuf_setlen(i32* %37, i64 %45)
  %47 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %48 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @mbuf_setnext(i32* %49, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %34
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @mbuf_free(i32* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %71

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %62 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @mbuf_data(i32* %63)
  %65 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %66 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @mbuf_trailingspace(i32* %67)
  %69 = load %struct.nfsm_chain*, %struct.nfsm_chain** %4, align 8
  %70 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %59, %54, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @nfsm_mbuf_get(i32, i32**, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mbuf_setlen(i32*, i64) #1

declare dso_local i64 @mbuf_data(i32*) #1

declare dso_local i32 @mbuf_setnext(i32*, i32*) #1

declare dso_local i32 @mbuf_free(i32*) #1

declare dso_local i32 @mbuf_trailingspace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
