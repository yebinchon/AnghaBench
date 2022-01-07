; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_net.c_I_InitNetwork.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_net.c_I_InitNetwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i32, i32, i32, i32, i8, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hostent = type { i64* }

@doomcom = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"-dup\00", align 1
@myargc = common dso_local global i32 0, align 4
@myargv = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"-extratic\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-port\00", align 1
@DOOMPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"using alternate port %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-net\00", align 1
@netgame = common dso_local global i32 0, align 4
@DOOMCOM_ID = common dso_local global i8* null, align 8
@PacketSend = common dso_local global i32 0, align 4
@netsend = common dso_local global i32 0, align 4
@PacketGet = common dso_local global i32 0, align 4
@netget = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@sendaddress = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"gethostbyname: couldn't find %s\00", align 1
@insocket = common dso_local global i8* null, align 8
@FIONBIO = common dso_local global i32 0, align 4
@sendsocket = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_InitNetwork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostent*, align 8
  store i32 1, i32* %1, align 4
  %5 = call %struct.TYPE_8__* @malloc(i32 32)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** @doomcom, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %7 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 32)
  %8 = call i32 @M_CheckParm(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @myargc, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %11
  %17 = load i8**, i8*** @myargv, align 8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 48
  %27 = trunc i32 %26 to i8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i8 %27, i8* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8
  %33 = sext i8 %32 to i32
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i8 1, i8* %37, align 8
  br label %38

38:                                               ; preds = %35, %16
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 8
  %42 = sext i8 %41 to i32
  %43 = icmp sgt i32 %42, 9
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8 9, i8* %46, align 8
  br label %47

47:                                               ; preds = %44, %38
  br label %51

48:                                               ; preds = %11, %0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i8 1, i8* %50, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = call i32 @M_CheckParm(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = call i32 @M_CheckParm(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @myargc, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i8**, i8*** @myargv, align 8
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @atoi(i8* %75)
  store i32 %76, i32* @DOOMPORT, align 4
  %77 = load i32, i32* @DOOMPORT, align 4
  %78 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %69, %64, %60
  %80 = call i32 @M_CheckParm(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  store i32 0, i32* @netgame, align 4
  %84 = load i8*, i8** @DOOMCOM_ID, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  store i32 0, i32* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  store i8 0, i8* %94, align 4
  br label %230

95:                                               ; preds = %79
  %96 = load i32, i32* @PacketSend, align 4
  store i32 %96, i32* @netsend, align 4
  %97 = load i32, i32* @PacketGet, align 4
  store i32 %97, i32* @netget, align 4
  store i32 1, i32* @netgame, align 4
  %98 = load i8**, i8*** @myargv, align 8
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 49
  %108 = trunc i32 %107 to i8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 5
  store i8 %108, i8* %110, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %207, %95
  %116 = load i32, i32* %2, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* @myargc, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load i8**, i8*** @myargv, align 8
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 45
  br label %130

130:                                              ; preds = %120, %115
  %131 = phi i1 [ false, %115 ], [ %129, %120 ]
  br i1 %131, label %132, label %212

132:                                              ; preds = %130
  %133 = load i32, i32* @AF_INET, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sendaddress, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* @DOOMPORT, align 4
  %142 = call i32 @htons(i32 %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sendaddress, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i32 %142, i32* %149, align 4
  %150 = load i8**, i8*** @myargv, align 8
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 46
  br i1 %158, label %159, label %175

159:                                              ; preds = %132
  %160 = load i8**, i8*** @myargv, align 8
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = call i32 @inet_addr(i8* %165)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sendaddress, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i32 %166, i32* %174, align 4
  br label %207

175:                                              ; preds = %132
  %176 = load i8**, i8*** @myargv, align 8
  %177 = load i32, i32* %2, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call %struct.hostent* @gethostbyname(i8* %180)
  store %struct.hostent* %181, %struct.hostent** %4, align 8
  %182 = load %struct.hostent*, %struct.hostent** %4, align 8
  %183 = icmp ne %struct.hostent* %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %175
  %185 = load i8**, i8*** @myargv, align 8
  %186 = load i32, i32* %2, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @I_Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %184, %175
  %192 = load %struct.hostent*, %struct.hostent** %4, align 8
  %193 = getelementptr inbounds %struct.hostent, %struct.hostent* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sendaddress, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  store i32 %198, i32* %206, align 4
  br label %207

207:                                              ; preds = %191, %159
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %115

212:                                              ; preds = %130
  %213 = load i8*, i8** @DOOMCOM_ID, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 6
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doomcom, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = call i8* (...) @UDPsocket()
  store i8* %221, i8** @insocket, align 8
  %222 = load i8*, i8** @insocket, align 8
  %223 = load i32, i32* @DOOMPORT, align 4
  %224 = call i32 @htons(i32 %223)
  %225 = call i32 @BindToLocalPort(i8* %222, i32 %224)
  %226 = load i8*, i8** @insocket, align 8
  %227 = load i32, i32* @FIONBIO, align 4
  %228 = call i32 @ioctl(i8* %226, i32 %227, i32* %1)
  %229 = call i8* (...) @UDPsocket()
  store i8* %229, i8** @sendsocket, align 8
  br label %230

230:                                              ; preds = %212, %83
  ret void
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @M_CheckParm(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @I_Error(i8*, i8*) #1

declare dso_local i8* @UDPsocket(...) #1

declare dso_local i32 @BindToLocalPort(i8*, i32) #1

declare dso_local i32 @ioctl(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
