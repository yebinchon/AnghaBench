; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnUdpRecvForInternet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnUdpRecvForInternet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i8*, i8*, i32 }
%struct.TYPE_20__ = type { i32, i8*, i8*, i8* }

@NAT_UDP = common dso_local global i32 0, align 4
@NAT_TCP_ESTABLISHED = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i8* null, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"LH_NAT_UDP_CREATED\00", align 1
@IP_PROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnUdpRecvForInternet(%struct.TYPE_19__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %28 = call i32 @NnIsActive(%struct.TYPE_19__* %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %8
  br label %209

34:                                               ; preds = %30
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %19, align 8
  %38 = load i32, i32* @NAT_UDP, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @NnSetNat(%struct.TYPE_21__* %17, i32 %38, i64 %39, i64 %40, i32 0, i32 0, i32 0, i32 0)
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_21__* @SearchHash(i32 %44, %struct.TYPE_21__* %17)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %18, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %47 = icmp eq %struct.TYPE_21__* %46, null
  br i1 %47, label %48, label %147

48:                                               ; preds = %34
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = call i32 @CanCreateNewNatEntry(%struct.TYPE_19__* %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %209

53:                                               ; preds = %48
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* @NAT_UDP, align 4
  %57 = call i32 @NnDeleteOldestNatSessionIfNecessary(%struct.TYPE_22__* %54, i64 %55, i32 %56)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %59 = load i32, i32* @NAT_UDP, align 4
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @NnMapNewPublicPort(%struct.TYPE_22__* %58, i32 %59, i32 0, i32 0, i32 %62)
  store i64 %63, i64* %21, align 8
  %64 = load i64, i64* %21, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %209

67:                                               ; preds = %53
  %68 = call i8* @ZeroMalloc(i64 96)
  %69 = bitcast i8* %68 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %18, align 8
  %70 = load i32, i32* @NAT_TCP_ESTABLISHED, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @INFINITE, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 12
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @INFINITE, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @Inc(i32 %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @NAT_UDP, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 9
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 8
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load i64, i64* %21, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %120 = call i32 @AddHash(i32 %118, %struct.TYPE_21__* %119)
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %125 = call i32 @AddHash(i32 %123, %struct.TYPE_21__* %124)
  %126 = load i32, i32* @MAX_SIZE, align 4
  %127 = zext i32 %126 to i64
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %24, align 8
  %129 = alloca i8, i64 %127, align 16
  store i64 %127, i64* %25, align 8
  %130 = load i32, i32* @MAX_SIZE, align 4
  %131 = zext i32 %130 to i64
  %132 = alloca i8, i64 %131, align 16
  store i64 %131, i64* %26, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @UINTToIP(i32* %22, i64 %133)
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @UINTToIP(i32* %23, i64 %135)
  %137 = call i32 @IPToStr(i8* %129, i32 0, i32* %22)
  %138 = call i32 @IPToStr(i8* %132, i32 0, i32* %23)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @NLog(%struct.TYPE_19__* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %142, i8* %129, i64 %143, i8* %132, i64 %144)
  %146 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %146)
  br label %147

147:                                              ; preds = %67, %34
  %148 = load i64, i64* %15, align 8
  %149 = add i64 32, %148
  %150 = call i8* @ZeroMalloc(i64 %149)
  %151 = bitcast i8* %150 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %151, %struct.TYPE_20__** %20, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @Endian16(i64 %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i8* @Endian16(i64 %158)
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load i64, i64* %15, align 8
  %163 = add nsw i64 32, %162
  %164 = call i8* @Endian16(i64 %163)
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %168 = bitcast %struct.TYPE_20__* %167 to i32*
  %169 = getelementptr inbounds i32, i32* %168, i64 32
  %170 = load i8*, i8** %14, align 8
  %171 = load i64, i64* %15, align 8
  %172 = call i32 @Copy(i32* %169, i8* %170, i64 %171)
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load i32, i32* @IP_PROTO_UDP, align 4
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %179 = load i64, i64* %15, align 8
  %180 = add i64 32, %179
  %181 = call i32 @CalcChecksumForIPv4(i32 %175, i64 %176, i32 %177, %struct.TYPE_20__* %178, i64 %180, i32 0)
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %184
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %197 = load i32, i32* @IP_PROTO_UDP, align 4
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %203 = load i64, i64* %15, align 8
  %204 = add i64 32, %203
  %205 = load i64, i64* %16, align 8
  %206 = call i32 @NnIpSendForInternet(%struct.TYPE_22__* %196, i32 %197, i32 127, i32 %200, i64 %201, %struct.TYPE_20__* %202, i64 %204, i64 %205)
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %208 = call i32 @Free(%struct.TYPE_20__* %207)
  br label %209

209:                                              ; preds = %147, %66, %52, %33
  ret void
}

declare dso_local i32 @NnIsActive(%struct.TYPE_19__*) #1

declare dso_local i32 @NnSetNat(%struct.TYPE_21__*, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @SearchHash(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @CanCreateNewNatEntry(%struct.TYPE_19__*) #1

declare dso_local i32 @NnDeleteOldestNatSessionIfNecessary(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i64 @NnMapNewPublicPort(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @AddHash(i32, %struct.TYPE_21__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UINTToIP(i32*, i64) #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @NLog(%struct.TYPE_19__*, i8*, i32, i8*, i64, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @Endian16(i64) #1

declare dso_local i32 @Copy(i32*, i8*, i64) #1

declare dso_local i32 @CalcChecksumForIPv4(i32, i64, i32, %struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @NnIpSendForInternet(%struct.TYPE_22__*, i32, i32, i32, i64, %struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @Free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
