; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbappendrecord.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbappendrecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, %struct.mbuf*, %struct.mbuf*, %struct.mbuf*, i32 }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.mbuf*, i64 }

@SB_DROP = common dso_local global i32 0, align 4
@SB_UNIX = common dso_local global i32 0, align 4
@SB_RECV = common dso_local global i32 0, align 4
@M_SKIPCFIL = common dso_local global i32 0, align 4
@sock_data_filt_flag_record = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sbappendrecord 1\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sbappendrecord 2\00", align 1
@M_EOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"sbappendrecord 3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbappendrecord(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = icmp eq %struct.mbuf* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %13 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SB_DROP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11, %2
  %19 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = call i32 @m_freem(%struct.mbuf* %22)
  br label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %164

25:                                               ; preds = %11
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %26, %struct.mbuf** %6, align 8
  br label %27

27:                                               ; preds = %38, %25
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 1
  %41 = load %struct.mbuf*, %struct.mbuf** %40, align 8
  store %struct.mbuf* %41, %struct.mbuf** %6, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %45 = call i32 @sbspace(%struct.sockbuf* %44)
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %49 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SB_UNIX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = call i32 @m_freem(%struct.mbuf* %55)
  store i32 0, i32* %3, align 4
  br label %164

57:                                               ; preds = %47, %42
  %58 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %59 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SB_RECV, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %57
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = icmp ne %struct.mbuf* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @M_SKIPCFIL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %67, %64
  %75 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %76 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @sock_data_filt_flag_record, align 4
  %79 = call i32 @sflt_data_in(i32 %77, i32* null, %struct.mbuf** %5, i32* null, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %84 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @EJUSTRETURN, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %90 = call i32 @m_freem(%struct.mbuf* %89)
  br label %91

91:                                               ; preds = %88, %82
  store i32 0, i32* %3, align 4
  br label %164

92:                                               ; preds = %74
  br label %104

93:                                               ; preds = %67, %57
  %94 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %95 = icmp ne %struct.mbuf* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* @M_SKIPCFIL, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %93
  br label %104

104:                                              ; preds = %103, %92
  %105 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %107 = call i32 @sballoc(%struct.sockbuf* %105, %struct.mbuf* %106)
  %108 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %109 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %111 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %110, i32 0, i32 2
  %112 = load %struct.mbuf*, %struct.mbuf** %111, align 8
  %113 = icmp ne %struct.mbuf* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %116 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %117 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %116, i32 0, i32 2
  %118 = load %struct.mbuf*, %struct.mbuf** %117, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 2
  store %struct.mbuf* %115, %struct.mbuf** %119, align 8
  br label %124

120:                                              ; preds = %104
  %121 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %122 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %123 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %122, i32 0, i32 3
  store %struct.mbuf* %121, %struct.mbuf** %123, align 8
  br label %124

124:                                              ; preds = %120, %114
  %125 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %126 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %127 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %126, i32 0, i32 2
  store %struct.mbuf* %125, %struct.mbuf** %127, align 8
  %128 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %129 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %130 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %129, i32 0, i32 1
  store %struct.mbuf* %128, %struct.mbuf** %130, align 8
  %131 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 1
  %133 = load %struct.mbuf*, %struct.mbuf** %132, align 8
  store %struct.mbuf* %133, %struct.mbuf** %6, align 8
  %134 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %135 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %134, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %135, align 8
  %136 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %137 = icmp ne %struct.mbuf* %136, null
  br i1 %137, label %138, label %157

138:                                              ; preds = %124
  %139 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @M_EOR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load i32, i32* @M_EOR, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %149 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load i32, i32* @M_EOR, align 4
  %153 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %145, %138, %124
  %158 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %160 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %161 = call i32 @sbcompress(%struct.sockbuf* %158, %struct.mbuf* %159, %struct.mbuf* %160)
  %162 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %163 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %164

164:                                              ; preds = %157, %91, %54, %24
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @sbspace(%struct.sockbuf*) #1

declare dso_local i32 @sflt_data_in(i32, i32*, %struct.mbuf**, i32*, i32) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*, i8*) #1

declare dso_local i32 @sballoc(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @sbcompress(%struct.sockbuf*, %struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
