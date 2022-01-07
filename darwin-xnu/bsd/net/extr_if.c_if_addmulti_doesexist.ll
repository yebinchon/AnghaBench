; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_addmulti_doesexist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_addmulti_doesexist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ifmultiaddr = type { i32, i32, i32, i32 }

@IFMAF_ANONYMOUS = common dso_local global i32 0, align 4
@ifma_link = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sockaddr*, %struct.ifmultiaddr**, i32)* @if_addmulti_doesexist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_addmulti_doesexist(%struct.ifnet* %0, %struct.sockaddr* %1, %struct.ifmultiaddr** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.ifmultiaddr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifmultiaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.ifmultiaddr** %2, %struct.ifmultiaddr*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = call %struct.ifmultiaddr* @LIST_FIRST(i32* %12)
  store %struct.ifmultiaddr* %13, %struct.ifmultiaddr** %10, align 8
  br label %14

14:                                               ; preds = %116, %4
  %15 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %16 = icmp ne %struct.ifmultiaddr* %15, null
  br i1 %16, label %17, label %120

17:                                               ; preds = %14
  %18 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %19 = call i32 @IFMA_LOCK_SPIN(%struct.ifmultiaddr* %18)
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %22 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ifa_equal(%struct.sockaddr* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %28 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %27)
  br label %116

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  %33 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %34 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFMAF_ANONYMOUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %41 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %39, %32
  %45 = phi i1 [ true, %32 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @VERIFY(i32 %46)
  %48 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %49 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFMAF_ANONYMOUS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %56 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %54, %44
  %60 = phi i1 [ true, %44 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %64 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %68 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFMAF_ANONYMOUS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %59
  %74 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %75 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @VERIFY(i32 %78)
  %80 = load i32, i32* @IFMAF_ANONYMOUS, align 4
  %81 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %82 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %73, %59
  br label %86

86:                                               ; preds = %85, %29
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %91 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %105

94:                                               ; preds = %89, %86
  %95 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %96 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %100 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call i32 @VERIFY(i32 %103)
  br label %105

105:                                              ; preds = %94, %89
  %106 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %8, align 8
  %107 = icmp ne %struct.ifmultiaddr** %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %110 = load %struct.ifmultiaddr**, %struct.ifmultiaddr*** %8, align 8
  store %struct.ifmultiaddr* %109, %struct.ifmultiaddr** %110, align 8
  %111 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %112 = call i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr* %111)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %115 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %114)
  store i32 0, i32* %5, align 4
  br label %122

116:                                              ; preds = %26
  %117 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %118 = load i32, i32* @ifma_link, align 4
  %119 = call %struct.ifmultiaddr* @LIST_NEXT(%struct.ifmultiaddr* %117, i32 %118)
  store %struct.ifmultiaddr* %119, %struct.ifmultiaddr** %10, align 8
  br label %14

120:                                              ; preds = %14
  %121 = load i32, i32* @ENOENT, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %113
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.ifmultiaddr* @LIST_FIRST(i32*) #1

declare dso_local i32 @IFMA_LOCK_SPIN(%struct.ifmultiaddr*) #1

declare dso_local i32 @ifa_equal(%struct.sockaddr*, i32) #1

declare dso_local i32 @IFMA_UNLOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr*) #1

declare dso_local %struct.ifmultiaddr* @LIST_NEXT(%struct.ifmultiaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
