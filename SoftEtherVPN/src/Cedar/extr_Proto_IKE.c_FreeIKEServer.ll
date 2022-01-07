; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_FreeIKEServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_FreeIKEServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"LI_STOPPING\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Num of IPsec SAs: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"LI_NUM_IPSEC_SA\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Num of IKE SAs: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"LI_NUM_IKE_SA\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Num of IKE_CLIENTs: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"LI_NUM_IKE_CLIENTS\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"LI_STOP\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"FreeThreadList()...\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"FreeThreadList() Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeIKEServer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %166

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i8*, ...) @IPsecLog(%struct.TYPE_6__* %12, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %30, %11
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @LIST_NUM(i32 %18)
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i8* @LIST_DATA(i32 %24, i64 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @FreeUdpPacket(i32* %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ReleaseList(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @LIST_NUM(i32 %40)
  %42 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @LIST_NUM(i32 %46)
  %48 = call i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i8*, ...) @IPsecLog(%struct.TYPE_6__* %43, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %65, %33
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @LIST_NUM(i32 %53)
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %3, align 8
  %61 = call i8* @LIST_DATA(i32 %59, i64 %60)
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @FreeIPsecSa(i32* %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i64, i64* %3, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %3, align 8
  br label %49

68:                                               ; preds = %49
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ReleaseList(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @LIST_NUM(i32 %75)
  %77 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @LIST_NUM(i32 %81)
  %83 = call i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i8*, ...) @IPsecLog(%struct.TYPE_6__* %78, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  store i64 0, i64* %3, align 8
  br label %84

84:                                               ; preds = %100, %68
  %85 = load i64, i64* %3, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @LIST_NUM(i32 %88)
  %90 = icmp slt i64 %85, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %3, align 8
  %96 = call i8* @LIST_DATA(i32 %94, i64 %95)
  %97 = bitcast i8* %96 to i32*
  store i32* %97, i32** %6, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @FreeIkeSa(i32* %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i64, i64* %3, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %3, align 8
  br label %84

103:                                              ; preds = %84
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ReleaseList(i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @LIST_NUM(i32 %110)
  %112 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @LIST_NUM(i32 %116)
  %118 = call i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i8*, ...) @IPsecLog(%struct.TYPE_6__* %113, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %117)
  store i64 0, i64* %3, align 8
  br label %119

119:                                              ; preds = %136, %103
  %120 = load i64, i64* %3, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @LIST_NUM(i32 %123)
  %125 = icmp slt i64 %120, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %119
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %3, align 8
  %131 = call i8* @LIST_DATA(i32 %129, i64 %130)
  %132 = bitcast i8* %131 to i32*
  store i32* %132, i32** %7, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @FreeIkeClient(%struct.TYPE_6__* %133, i32* %134)
  br label %136

136:                                              ; preds = %126
  %137 = load i64, i64* %3, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %3, align 8
  br label %119

139:                                              ; preds = %119
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ReleaseList(i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ReleaseSockEvent(i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %149 = call i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i8*, ...) @IPsecLog(%struct.TYPE_6__* %148, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ReleaseCedar(i32 %152)
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @FreeIkeEngine(i32 %156)
  %158 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @FreeThreadList(i32 %161)
  %163 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %165 = call i32 @Free(%struct.TYPE_6__* %164)
  br label %166

166:                                              ; preds = %139, %10
  ret void
}

declare dso_local i32 @IPsecLog(%struct.TYPE_6__*, i32*, i32*, i32*, i8*, ...) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @FreeUdpPacket(i32*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @FreeIPsecSa(i32*) #1

declare dso_local i32 @FreeIkeSa(i32*) #1

declare dso_local i32 @FreeIkeClient(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ReleaseSockEvent(i32) #1

declare dso_local i32 @ReleaseCedar(i32) #1

declare dso_local i32 @FreeIkeEngine(i32) #1

declare dso_local i32 @FreeThreadList(i32) #1

declare dso_local i32 @Free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
