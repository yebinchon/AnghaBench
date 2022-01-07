; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbinsertoob.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbinsertoob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, %struct.mbuf*, %struct.mbuf*, i32 }
%struct.mbuf = type { i32, i32, %struct.mbuf*, %struct.mbuf* }

@.str = private unnamed_addr constant [14 x i8] c"sbinsertoob 1\00", align 1
@SB_RECV = common dso_local global i32 0, align 4
@M_SKIPCFIL = common dso_local global i32 0, align 4
@sock_data_filt_flag_oob = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sbinsertoob 2\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@M_EOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"sbinsertoob 3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbinsertoob(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = icmp eq %struct.mbuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

12:                                               ; preds = %2
  %13 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %14 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %16 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SB_RECV, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @M_SKIPCFIL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %12
  %30 = phi i1 [ false, %12 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %35 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @sock_data_filt_flag_oob, align 4
  %38 = call i32 @sflt_data_in(i32 %36, i32* null, %struct.mbuf** %5, i32* null, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %40 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EJUSTRETURN, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  br label %50

50:                                               ; preds = %47, %43
  store i32 0, i32* %3, align 4
  br label %142

51:                                               ; preds = %33
  br label %63

52:                                               ; preds = %29
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = icmp ne %struct.mbuf* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* @M_SKIPCFIL, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %65 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %64, i32 0, i32 2
  store %struct.mbuf** %65, %struct.mbuf*** %7, align 8
  br label %66

66:                                               ; preds = %87, %63
  %67 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %67, align 8
  %69 = icmp ne %struct.mbuf* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %71, align 8
  store %struct.mbuf* %72, %struct.mbuf** %6, align 8
  br label %73

73:                                               ; preds = %84, %70
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %86 [
    i32 128, label %77
    i32 129, label %78
  ]

77:                                               ; preds = %73
  br label %87

78:                                               ; preds = %73
  %79 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 2
  %81 = load %struct.mbuf*, %struct.mbuf** %80, align 8
  store %struct.mbuf* %81, %struct.mbuf** %6, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %83 = icmp ne %struct.mbuf* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %73

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %73
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %88, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 3
  store %struct.mbuf** %90, %struct.mbuf*** %7, align 8
  br label %66

91:                                               ; preds = %86, %66
  %92 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %94 = call i32 @sballoc(%struct.sockbuf* %92, %struct.mbuf* %93)
  %95 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %95, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 3
  store %struct.mbuf* %96, %struct.mbuf** %98, align 8
  %99 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %99, align 8
  %101 = icmp eq %struct.mbuf* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %104 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %105 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %104, i32 0, i32 1
  store %struct.mbuf* %103, %struct.mbuf** %105, align 8
  br label %106

106:                                              ; preds = %102, %91
  %107 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %108 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %107, %struct.mbuf** %108, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %110 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %109, i32 0, i32 2
  %111 = load %struct.mbuf*, %struct.mbuf** %110, align 8
  store %struct.mbuf* %111, %struct.mbuf** %6, align 8
  %112 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %113, align 8
  %114 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %115 = icmp ne %struct.mbuf* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %106
  %117 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %118 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @M_EOR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %116
  %124 = load i32, i32* @M_EOR, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %127 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @M_EOR, align 4
  %131 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %123, %116, %106
  %136 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %137 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %139 = call i32 @sbcompress(%struct.sockbuf* %136, %struct.mbuf* %137, %struct.mbuf* %138)
  %140 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %141 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %135, %50, %11
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*, i8*) #1

declare dso_local i32 @sflt_data_in(i32, i32*, %struct.mbuf**, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @sballoc(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @sbcompress(%struct.sockbuf*, %struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
