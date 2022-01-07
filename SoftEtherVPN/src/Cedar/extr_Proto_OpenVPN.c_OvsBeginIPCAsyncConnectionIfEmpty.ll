; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsBeginIPCAsyncConnectionIfEmpty.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsBeginIPCAsyncConnectionIfEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32*, i32, i32, i32, i32, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OPENVPN_IPC_CLIENT_NAME = common dso_local global i32 0, align 4
@OPENVPN_MODE_L3 = common dso_local global i64 0, align 8
@OPENVPN_IPC_POSTFIX_L3 = common dso_local global i32 0, align 4
@OPENVPN_IPC_POSTFIX_L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"=\09\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"UV_HOSTNAME\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"IV_HWADDR\00", align 1
@OPENVPN_MODE_L2 = common dso_local global i64 0, align 8
@IPC_LAYER_2 = common dso_local global i32 0, align 4
@IPC_LAYER_3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"MSS=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OvsBeginIPCAsyncConnectionIfEmpty(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = icmp eq %struct.TYPE_22__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = icmp eq %struct.TYPE_23__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  br label %204

19:                                               ; preds = %15
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @IsIPCConnected(i32* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @FreeIPC(i32* %28)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %19
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %204

37:                                               ; preds = %32
  %38 = call i32 @Zero(%struct.TYPE_24__* %8, i32 72)
  %39 = call i32 @Zero(%struct.TYPE_24__* %9, i32 72)
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PPPParseUsername(i32 %42, i32 %46, %struct.TYPE_24__* %9)
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 15
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @OPENVPN_IPC_CLIENT_NAME, align 4
  %51 = call i32 @StrCpy(i32 %49, i32 4, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 14
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OPENVPN_MODE_L3, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %37
  %60 = load i32, i32* @OPENVPN_IPC_POSTFIX_L3, align 4
  br label %63

61:                                               ; preds = %37
  %62 = load i32, i32* @OPENVPN_IPC_POSTFIX_L2, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @StrCpy(i32 %53, i32 4, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 13
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @StrCpy(i32 %67, i32 4, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 12
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 12
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @StrCpy(i32 %72, i32 4, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @StrCpy(i32 %77, i32 4, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 10
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 5
  %86 = call i32 @Copy(i32* %83, i32* %85, i32 4)
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 9
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 3
  %94 = call i32 @Copy(i32* %91, i32* %93, i32 4)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 7
  store i32 %97, i32* %98, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %63
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @StrCpy(i32 %107, i32 4, i32 %112)
  br label %114

114:                                              ; preds = %105, %63
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32* @NewEntryList(i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %119, i32** %7, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i64 @EntryListHasKey(i32* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @EntryListStrValue(i32* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %128 = call i32 @StrCpy(i32 %125, i32 4, i32 %127)
  br label %135

129:                                              ; preds = %114
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @EntryListStrValue(i32* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %134 = call i32 @StrCpy(i32 %131, i32 4, i32 %133)
  br label %135

135:                                              ; preds = %129, %123
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @FreeEntryList(i32* %136)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @OPENVPN_MODE_L3, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i32 1, i32* %144, align 8
  br label %147

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IsEmptyStr(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @IsEmptyStr(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %154, %147
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 4
  store i32* %171, i32** %172, align 8
  br label %173

173:                                              ; preds = %167, %161
  br label %174

174:                                              ; preds = %173, %154
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @OPENVPN_MODE_L2, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* @IPC_LAYER_2, align 4
  br label %184

182:                                              ; preds = %174
  %183 = load i32, i32* @IPC_LAYER_3, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  store i32 %185, i32* %186, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %190 = call i32 @OvsCalcTcpMss(%struct.TYPE_22__* %187, %struct.TYPE_21__* %188, %struct.TYPE_23__* %189)
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  store i32 %190, i32* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @Debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32* @NewIPCAsync(i32 %197, %struct.TYPE_24__* %8, i32 %200)
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  store i32* %201, i32** %203, align 8
  br label %204

204:                                              ; preds = %18, %184, %32
  ret void
}

declare dso_local i32 @IsIPCConnected(i32*) #1

declare dso_local i32 @FreeIPC(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @PPPParseUsername(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32* @NewEntryList(i32, i8*, i8*) #1

declare dso_local i64 @EntryListHasKey(i32*, i8*) #1

declare dso_local i32 @EntryListStrValue(i32*, i8*) #1

declare dso_local i32 @FreeEntryList(i32*) #1

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @OvsCalcTcpMss(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @Debug(i8*, i32) #1

declare dso_local i32* @NewIPCAsync(i32, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
