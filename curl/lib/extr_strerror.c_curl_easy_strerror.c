
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
const char *
curl_easy_strerror(CURLcode error)
{

  switch(error) {
  case 173:
    return "No error";

  case 134:
    return "Unsupported protocol";

  case 211:
    return "Failed initialization";

  case 132:
    return "URL using bad/illegal format or missing URL";

  case 184:
    return "A requested feature, protocol or option was not found built-in in"
      " this libcurl due to a build-time decision.";

  case 212:
    return "Couldn't resolve proxy name";

  case 213:
    return "Couldn't resolve host name";

  case 214:
    return "Couldn't connect to server";

  case 130:
    return "Weird server reply";

  case 163:
    return "Access denied to remote resource";

  case 208:
    return "FTP: The server failed to connect to data port";

  case 207:
    return "FTP: Accepting server connect has timed out";

  case 200:
    return "FTP: The server did not accept the PRET command.";

  case 198:
    return "FTP: unknown PASS reply";

  case 197:
    return "FTP: unknown PASV reply";

  case 199:
    return "FTP: unknown 227 response format";

  case 205:
    return "FTP: can't figure out the host in the PASV response";

  case 194:
    return "Error in the HTTP2 framing layer";

  case 203:
    return "FTP: couldn't set file type";

  case 170:
    return "Transferred a partial file";

  case 204:
    return "FTP: couldn't retrieve (RETR failed) the specified file";

  case 168:
    return "Quote command returned error";

  case 190:
    return "HTTP response code said error";

  case 129:
    return "Failed writing received data to disk/application";

  case 133:
    return "Upload failed (at start/before it took off)";

  case 166:
    return "Failed to open/read local data from file/application";

  case 171:
    return "Out of memory";

  case 172:
    return "Timeout was reached";

  case 201:
    return "FTP: command PORT failed";

  case 202:
    return "FTP: command REST failed";

  case 167:
    return "Requested range was not delivered by the server";

  case 191:
    return "Internal problem setting up the POST";

  case 151:
    return "SSL connect error";

  case 219:
    return "Couldn't resume download";

  case 209:
    return "Couldn't read a file:// file";

  case 188:
    return "LDAP: cannot bind";

  case 186:
    return "LDAP: search failed";

  case 196:
    return "A required function in the library was not found";

  case 223:
    return "Operation was aborted by an application callback";

  case 218:
    return "A libcurl function was given a bad argument";

  case 189:
    return "Failed binding local connection end";

  case 136 :
    return "Number of redirects hit maximum amount";

  case 135:
    return "An unknown option was passed in to libcurl";

  case 142 :
    return "Malformed telnet option";

  case 195:
    return "Server returned nothing (no headers, no data)";

  case 148:
    return "SSL crypto engine not found";

  case 147:
    return "Can not set SSL crypto engine as default";

  case 149:
    return "Failed to initialise SSL crypto engine";

  case 157:
    return "Failed sending data to the peer";

  case 164:
    return "Failure when receiving data from the peer";

  case 153:
    return "Problem with the local SSL certificate";

  case 152:
    return "Couldn't use specified SSL cipher";

  case 169:
    return "SSL peer certificate or SSH remote key was not OK";

  case 154:
    return "Problem with the SSL CA cert (path? access rights?)";

  case 220:
    return "Unrecognized or bad HTTP Content or Transfer-Encoding";

  case 187:
    return "Invalid LDAP URL";

  case 210:
    return "Maximum file size exceeded";

  case 131:
    return "Requested SSL level failed";

  case 143:
    return "Failed to shut down the SSL connection";

  case 150:
    return "Failed to load CRL file (path? access rights?, format?)";

  case 145:
    return "Issuer check against peer certificate failed";

  case 156:
    return "Send failed since rewinding of the data stream failed";

  case 185:
    return "Login denied";

  case 139:
    return "TFTP: File Not Found";

  case 138:
    return "TFTP: Access Violation";

  case 162:
    return "Disk full or allocation exceeded";

  case 141:
    return "TFTP: Illegal operation";

  case 137:
    return "TFTP: Unknown transfer ID";

  case 161:
    return "Remote file already exists";

  case 140:
    return "TFTP: No such user";

  case 216:
    return "Conversion failed";

  case 215:
    return "Caller must register CURLOPT_CONV_ callback options";

  case 160:
    return "Remote file not found";

  case 155:
    return "Error in the SSH layer";

  case 222:
    return "Socket not ready for send/recv";

  case 159:
    return "RTSP CSeq mismatch or invalid CSeq";

  case 158:
    return "RTSP session error";

  case 206:
    return "Unable to parse FTP file list";

  case 217:
    return "Chunk callback failed";

  case 183:
    return "The max connection limit is reached";

  case 144:
    return "SSL public key does not match pinned public key";

  case 146:
    return "SSL server certificate status verification FAILED";

  case 193:
    return "Stream error in the HTTP/2 framing layer";

  case 165:
    return "API function called from within callback";

  case 221:
    return "An authentication function returned an error";

  case 192:
    return "HTTP/3 error";


  case 182:
  case 181:
  case 180:
  case 179:
  case 178:
  case 177:
  case 176:
  case 175:
  case 174:
  case 128:
    break;
  }
  return "Unknown error";






}
