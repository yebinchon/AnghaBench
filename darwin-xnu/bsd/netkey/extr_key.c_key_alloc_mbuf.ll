; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_alloc_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_alloc_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32* }

@M_DONTWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i32)* @key_alloc_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @key_alloc_mbuf(i32 %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %78, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %9
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = load i32, i32* @M_DONTWAIT, align 4
  %15 = load i32, i32* @MT_DATA, align 4
  %16 = call i32 @MGET(%struct.mbuf* %13, i32 %14, i32 %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MLEN, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = load i32, i32* @M_DONTWAIT, align 4
  %26 = call i32 @MCLGET(%struct.mbuf* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19, %12
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %32 = call i32 @m_freem(%struct.mbuf* %31)
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %81

33:                                               ; preds = %27
  %34 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %33
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, -8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %47, %33
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %71 = icmp ne %struct.mbuf* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %75 = call i32 @m_cat(%struct.mbuf* %73, %struct.mbuf* %74)
  br label %78

76:                                               ; preds = %64
  %77 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %77, %struct.mbuf** %4, align 8
  br label %78

78:                                               ; preds = %76, %72
  br label %9

79:                                               ; preds = %9
  %80 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %80, %struct.mbuf** %2, align 8
  br label %81

81:                                               ; preds = %79, %30
  %82 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %82
}

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
