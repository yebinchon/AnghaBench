; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbappend.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbappend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, %struct.TYPE_2__*, %struct.mbuf*, %struct.socket* }
%struct.TYPE_2__ = type { i32 }
%struct.socket = type { i32 }
%struct.mbuf = type { i32 }

@SB_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sbappend 1\00", align 1
@M_EOR = common dso_local global i32 0, align 4
@SB_RECV = common dso_local global i32 0, align 4
@M_SKIPCFIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sbappend 2\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"sbappend 3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbappend(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %9 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %8, i32 0, i32 3
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %6, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %12 = icmp eq %struct.mbuf* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %15 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SB_DROP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13, %2
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = icmp ne %struct.mbuf* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  br label %26

26:                                               ; preds = %23, %20
  store i32 0, i32* %3, align 4
  br label %109

27:                                               ; preds = %13
  %28 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %29 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 2
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  %33 = icmp ne %struct.mbuf* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @M_EOR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = call i32 @sbappendrecord(%struct.sockbuf* %44, %struct.mbuf* %45)
  store i32 %46, i32* %3, align 4
  br label %109

47:                                               ; preds = %34, %27
  %48 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %49 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SB_RECV, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = icmp ne %struct.mbuf* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @M_SKIPCFIL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.socket*, %struct.socket** %6, align 8
  %66 = call i32 @sflt_data_in(%struct.socket* %65, i32* null, %struct.mbuf** %5, i32* null, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %68 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EJUSTRETURN, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %77 = call i32 @m_freem(%struct.mbuf* %76)
  br label %78

78:                                               ; preds = %75, %71
  store i32 0, i32* %3, align 4
  br label %109

79:                                               ; preds = %64
  br label %91

80:                                               ; preds = %57, %47
  %81 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %82 = icmp ne %struct.mbuf* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* @M_SKIPCFIL, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %87 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %93 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %92, i32 0, i32 2
  %94 = load %struct.mbuf*, %struct.mbuf** %93, align 8
  %95 = icmp eq %struct.mbuf* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %98 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %99 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %98, i32 0, i32 2
  store %struct.mbuf* %97, %struct.mbuf** %99, align 8
  br label %100

100:                                              ; preds = %96, %91
  %101 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %103 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %104 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = call i32 @sbcompress(%struct.sockbuf* %101, %struct.mbuf* %102, %struct.TYPE_2__* %105)
  %107 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %108 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %100, %78, %43, %26
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*, i8*) #1

declare dso_local i32 @sbappendrecord(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @sflt_data_in(%struct.socket*, i32*, %struct.mbuf**, i32*, i32) #1

declare dso_local i32 @sbcompress(%struct.sockbuf*, %struct.mbuf*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
